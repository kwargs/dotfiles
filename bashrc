# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

export HISTFILESIZE=5000

export CLICOLOR=1

# append to the history file, don't overwrite it
shopt -s histappend
PROMPT_COMMAND='history -a'

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
shopt -s cdspell
shopt -s cmdhist

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi

unset color_prompt force_color_prompt


# http://wiki.archlinux.org/index.php/Color_Bash_Prompt -- usefull examples
# Fancy PWD display function
bash_prompt_command() {
    # How many characters of the $PWD should be kept
    local pwdmaxlen=25
    # Indicate that there has been dir truncation
    local trunc_symbol=".."
    local dir=${PWD##*/}
    pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
    NEW_PWD=${PWD/#$HOME/\~}
    local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
    if [ ${pwdoffset} -gt "0" ]; then
        NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
        NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
    fi
}

bash_prompt(){
    case "$TERM" in
    xterm*|rxvt*|screen*)
        bash_prompt_command
        local ps_begin='';
        if [ "$HOME" != "/Users/wizard" ]; then
            test "$USER" = "wizard" || ps_begin='\[\e[31;1m\]\u@';
            if [ -f /etc/debian_version ]; then
                ps_begin=${ps_begin}"\[\e[0;34m\]";
            else
                ps_begin=${ps_begin}"\[\e[0;31m\]";
            fi;
            ps_begin=${ps_begin}"[\h] ";
        fi;
        PS1=${ps_begin}'\[\e[0;33m\]${NEW_PWD}\[\e[m\]\[\e[0;37m\]$(__git_ps1 " %s ")\[\e[m\]\[\e[0;32m\]\$\[\e[m\] \[\e[0m\]'
        ;;
    *)
        ;;
    esac
}
export GIT_PS1_SHOWDIRTYSTATE='yes'
source $HOME/.git-completion
PROMPT_COMMAND=bash_prompt_command
bash_prompt
unset bash_prompt


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_locals ]; then
    . ~/.bash_locals
fi

CURRENT_PYTHON=`python --version 2>&1 | egrep -o '[[:digit:]]\.[[:digit:]]'`
export PYTHONPATH=$HOME/libs:$HOME/libs/lib/python/:$HOME/libs/lib/python$CURRENT_PYTHON/site-packages/:$HOME/src/:$PYTHONPATH
export PATH=$HOME/libs/bin/:$PATH

if [ -f ~/.pystartup ]; then
    export PYTHONSTARTUP=$HOME/.pystartup
fi

export EDITOR='vim'
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
elif [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi



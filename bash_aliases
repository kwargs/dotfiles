
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias rgrep='rgrep --color=auto'
fi

if [ -x /usr/bin/sqlplus ]; then
    [ -x /usr/bin/rlwrap ] && alias sql='rlwrap -r -b "" -f $HOME/.sql/sql.dict sqlplus';
    export SQLPATH=$SQLPATH:$HOME/.sql
fi

[ -x /usr/bin/vim ] && alias vi='vim'

# some more ls aliases
alias ll='ls -lhF'
alias la='ls -A'
alias l='ls -CF'
alias df='df -h'
alias sl='ls'

alias ipy='ipython'
alias less='less +G'
alias cp2utf='iconv -fcp1251 -tutf-8'
alias koi2utf='iconv -fkoi8-r -tutf-8'
alias feh='qiv'

if [ -f /etc/debian_version ]; then
    for minor_v in `ls /usr/bin/python2.*|grep -o '[[:digit:]]$'`; do 
        alias python2$minor_v="python2.$minor_v"; 
    done
fi


# vim: set filetype=sh :

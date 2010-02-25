" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.1
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

" set background=dark
hi clear
set bg&
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

highlight Normal       ctermfg=103  ctermbg=NONE
highlight CursorLine                ctermbg=16  cterm=NONE

highlight Comment      ctermfg=59
highlight Constant     ctermfg=73
highlight Define       ctermfg=173
highlight Error        ctermfg=221  ctermbg=88
highlight Function     ctermfg=221              cterm=NONE
highlight! link Identifier Function " start and end tags
highlight Include      ctermfg=173              cterm=NONE
highlight PreCondit    ctermfg=173              cterm=NONE
highlight Keyword      ctermfg=173              cterm=NONE
highlight LineNr       ctermfg=236
highlight Number       ctermfg=107
highlight PreProc      ctermfg=107
highlight Search       ctermfg=NONE ctermbg=58
highlight Statement    ctermfg=173              cterm=NONE
highlight String       ctermfg=107
highlight Title        ctermfg=15
highlight Type         ctermfg=167              cterm=NONE
highlight Visual                    ctermbg=60
highlight NonText      ctermfg=238
highlight! link SpecialKey NonText

highlight FoldColumn   ctermfg=64  ctermbg=NONE cterm=NONE
highlight! link Folded FoldColumn


highlight DiffAdd      ctermfg=NONE ctermbg=22
highlight DiffDelete   ctermfg=NONE ctermbg=52
highlight DiffChange   ctermfg=NONE ctermbg=53
highlight DiffText     ctermfg=NONE ctermbg=24   cterm=NONE

highlight Special      ctermfg=167

highlight MatchParen   ctermfg=NONE ctermbg=236

highlight Pmenu        ctermfg=173  ctermbg=235
highlight PmenuSel     ctermfg=167  ctermbg=233

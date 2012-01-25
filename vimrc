set nocp 
let spell_auto_type="tex,doc,mail.txt"

set enc=utf-8 tenc=utf-8
set fencs=utf-8,cp1251,koi8-r
set visualbell 
set fileformats=unix,dos,mac

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set t_Co=256
syntax on
"colorscheme native
colorscheme solarized
set guifont=Monaco\ 11

" http://clubs.ya.ru/vim/replies.xml?item_no=1351
" via lynn@
set nowrap list listchars=tab:▹‧,trail:·,extends:▸,precedes:◂
" via paulus

"nnoremap <F3> :set list!<CR>
nmap <F3> :set list!<CR>
nmap <F4> :set wrap!<CR>

"
" Don’t worry about the name. What this does is allow Vim to manage multiple buffers effectively.
"   * The current buffer can be put to the background without writing to disk;  
"    * When a background buffer becomes current again, marks and undo-history are remembered.
" (1)
set hidden
" (1)
set history=1000
"A running gvim will always have a window title, but when vim is run within an xterm, by default it inherits the terminal’s current title. 
" (1)
set title

set noruler
set laststatus=2 
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ \ %l,%c\ %P

set pastetoggle=<F2>

set incsearch
set hlsearch
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/
set nobackup

set showcmd " display incomplete commands

set expandtab

" A four-space tab indent width is the prefered coding style for Python (and
" everything else!),
" " although of course some disagree. This page generally assumes you want
" 4-space indents.set tabstop = 4
set tabstop=4
"
" "This allows you to use the < and > keys from VIM's visual (marking) mode to
" block indent/unindent regions
set shiftwidth=4

"Use the \"shiftwidth\" setting for inserting s instead of the \"tabstop\"
"setting, when at the beginning of a line.
"This may be redundant for most people, but some poeple like to keep their
"tabstop=8 for compatability
"when loading files, but setting shiftwidth=4 for nicer coding style.
set smarttab

" People like using real tab character instead of spaces because it makes it
" easier
" " when pressing BACKSPACE or DELETE, since if the indent is using spaces
" " it will take 4 keystrokes to delete the indent. Using this setting,
" " however, makes VIM see multiple space characters as tabstops,
" " and so does the right thing and will delete four spaces (assuming 4 is
" your setting).
set softtabstop=4

" Very painful to live without this (especially with Python)!
" " It means that when you press RETURN and a new line is created, the indent
" of the new line will match that of the previous line.
set autoindent

if has("mouse")
    set mouse=a
endif

" SQL stuff
let g:sql_type_default = 'plsql'

" Set Python dic
" set dictionary=~/.vim/dic/python
"

set loadplugins
filetype plugin on
let python_highlight_all = 1

"autocmd FileType python compiler pylint

" Tab autocompletion
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

imap <tab> <c-r>=InsertTabWrapper()<cr>

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt-=preview
set completeopt+=longest

" resources: 
" (1) http://items.sjbach.com/319/configuring-vim-right
" (2) http://www.pixelbeat.org/settings/.vimrc

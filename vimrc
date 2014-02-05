let spell_auto_type="tex,doc,mail.txt"

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set enc=utf-8 tenc=utf-8
set fencs=utf-8,cp1251,koi8-r
set visualbell 
set fileformats=unix,dos,mac
set nobackup
set showcmd " display incomplete commands
set wildmenu

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_underline = 1
set t_Co=256
syntax on
colorscheme solarized
set guifont=Monaco\ 11

" http://clubs.ya.ru/vim/replies.xml?item_no=1351
" via lynn@
set nowrap list listchars=tab:▹‧,trail:·,extends:▸,precedes:◂
" via paulus

nmap <F3> :set list!<CR>
nmap <F4> :set wrap!<CR>

set hidden
set history=1000
set undolevels=1000
set title

set noruler
set laststatus=2 
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ \ %l,%c\ %P

set pastetoggle=<F2>

set incsearch
set hlsearch
" Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
" https://github.com/veged/cfgs/blob/master/.vimrc
:nnoremap <CR> :nohlsearch<CR>/<BS><CR>
" replace current word pressing ';'
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

set backspace=indent,eol,start " Allow backspacing over everything in insert mode

set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent

if has("mouse")
    set mouse=a
endif


set loadplugins
filetype plugin on
filetype plugin indent on


set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt+=preview
set completeopt+=menu
" python
let python_highlight_all = 1


" inoremap <Tab> <C-R>=SuperCleverTab()<CR>
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
" SuperTab like snippets behavior. 
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 


" SQL stuff
let g:sql_type_default = 'plsql'

" resources: 
" (1) http://items.sjbach.com/319/configuring-vim-right
" (2) http://www.pixelbeat.org/settings/.vimrc

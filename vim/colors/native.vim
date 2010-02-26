"
" Native Vim Color Scheme
" =======================
"
" author:   Armin Ronacher <armin.ronacher@active-4.com>
"
" http://www.vim.org/scripts/script.php?script_id=1857
hi clear Normal
set bg&

if exists("syntax_on")
    syntax reset
endif

let colors_name = "native"

" Default Colors
hi Normal       guifg=#f2f2f2 guibg=#222222 ctermfg=7   ctermbg=none
hi NonText      guifg=#444444 guibg=#111111 ctermfg=238 ctermbg=233
hi Cursor       guibg=#aaaaaa ctermbg=248
hi lCursor      guibg=#aaaaaa ctermbg=248

" Search
hi Search       guibg=peru guifg=wheat ctermbg=173 ctermfg=223
hi IncSearch    cterm=NONE ctermfg=yellow ctermbg=green
hi Search       cterm=NONE ctermfg=grey ctermbg=blue

" Window Elements
hi StatusLine   guifg=white guibg=#8090a0 gui=bold ctermfg=15 ctermbg=103 cterm=bold
hi StatusLineNC guifg=#506070 guibg=#a0b0c0 ctermfg=59  ctermbg=145
hi VertSplit    guifg=#a0b0c0 guibg=#a0b0c0 ctermfg=145 ctermbg=145
hi Folded       guifg=#111111 guibg=#8090a0 ctermfg=233 ctermbg=103
hi IncSearch    guifg=slategrey guibg=khaki ctermfg=66  ctermbg=222

" Specials
hi Todo         guifg=#e50808 guibg=#520000 gui=bold ctermfg=160 ctermbg=52 cterm=bold
hi Title        guifg=#ffffff gui=bold ctermfg=15 cterm=bold


" Strings
hi String       guifg=#ed9d13 ctermfg=214
hi Constant     guifg=#ed9d13 ctermfg=214

" Syntax
hi Number       guifg=#3677a9             ctermfg=67
hi Statement    guifg=#6ab825 gui=bold    ctermfg=70  cterm=bold
hi Function     guifg=#447fcf             ctermfg=68
hi PreProc      guifg=#cd2828 gui=bold    ctermfg=1   cterm=bold
hi Comment      guifg=#999999 gui=italic  ctermfg=246 cterm=italic
hi Type         guifg=#bbbbbb gui=bold    ctermfg=250 cterm=bold

" Diff
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold ctermfg=4 ctermbg=6
hi DiffText     cterm=bold ctermbg=1

hi Pmenu        guibg=#474747 ctermbg=239


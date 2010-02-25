"
" Native Vim Color Scheme
" =======================
"
" author:   Armin Ronacher <armin.ronacher@active-4.com>
"
hi clear Normal
set bg&

if exists("syntax_on")
    syntax reset
endif

let colors_name = "native"

" Default Colors
hi Normal       ctermfg=7	 ctermbg=none
hi NonText      ctermfg=238	 ctermbg=233	
hi Cursor       ctermbg=248	
hi lCursor      ctermbg=248	

" Search
hi Search	    ctermbg=173	 ctermfg=223	
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue

" Window Elements
hi StatusLine   ctermfg=15	 ctermbg=103	 cterm=bold
hi StatusLineNC ctermfg=59	 ctermbg=145	
hi VertSplit    ctermfg=145	 ctermbg=145	
hi Folded       ctermfg=233	 ctermbg=103	
hi IncSearch	ctermfg=66	 ctermbg=222	

" Specials
hi Todo         ctermfg=160	 ctermbg=52	 cterm=bold
hi Title        ctermfg=15	 cterm=bold

" Strings
hi String       ctermfg=214	
hi Constant     ctermfg=214	

" Syntax
hi Number       ctermfg=67	
hi Statement    ctermfg=70	 cterm=bold
hi Function     ctermfg=68	
hi PreProc      ctermfg=1	 cterm=bold
hi Comment      ctermfg=246	 cterm=italic
hi Type         ctermfg=250	 cterm=bold

" Diff
hi DiffAdd	    ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	    cterm=bold ctermbg=1

hi Pmenu ctermbg=239

let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#080808 ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#121212 ctermbg=233

hi IndentGuidesOdd  guibg=#080808 ctermbg=232
hi IndentGuidesEven guibg=#121212 ctermbg=233

call indent_guides#enable()

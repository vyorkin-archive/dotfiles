let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_branch_prefix = '⭠ '
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

let g:airline#extensions#tabline#enabled = 1

if has("gui_running")
  let g:airline_theme="solarized"
else
  let g:airline_theme="sol"
endif

let g:airline_section_y = rvm#statusline()

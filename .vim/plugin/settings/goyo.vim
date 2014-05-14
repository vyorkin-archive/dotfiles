nnoremap <Leader><Space> :Goyo<CR>

let g:goyo_width = 100

function! g:goyo_before()
  if has('gui_running')
  elseif exists('$TMUX')
    silent !tmux set status off
  endif
  silent! NERDTreeClose
  silent! SignifyToggle
  silent! set nonumber
endfunction

function! g:goyo_after()
  if has('gui_running')
  elseif exists('$TMUX')
    silent !tmux set status on
  endif
  silent! set number
  silent! SignifyToggle

  " TODO: Looks like shit
  if g:colors_name == 'solarized'
    hi! SignColumn ctermbg=8 guibg=#002B36
    hi! VertSplit guifg=#003745 guibg=#002B36 cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
    hi! LineNR guifg=#004C60 gui=bold guibg=#002B36 ctermfg=146
  end
endfunction

let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]

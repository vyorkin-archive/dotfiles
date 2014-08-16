nnoremap <Leader>f :Goyo<CR>

let g:goyo_width = 100

function! GoyoBefore()
  if has('gui_running')
  elseif exists('$TMUX')
    silent !tmux set status off
  endif

  silent! NERDTreeClose
  silent! SignifyToggle
  silent! set nonumber
endfunction

function! GoyoAfter()
  if has('gui_running')
  elseif exists('$TMUX')
    silent !tmux set status on
  endif

  silent! set number
  silent! SignifyToggle
  silent! NERDTreeClose

  if g:colors_name == 'solarized' && &bg == "dark"
    hi! SignColumn ctermbg=8 guibg=#002B36
    hi! VertSplit guifg=#003745 guibg=#002B36 cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
    hi! LineNR guifg=#004C60 gui=bold guibg=#002B36 ctermfg=146
  else
    hi! VertSplit guifg=NONE guibg=NONE cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
    hi! SignColumn ctermfg=6 guifg=#93a1a1 guibg=#eee8d5 ctermbg=7
  end
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

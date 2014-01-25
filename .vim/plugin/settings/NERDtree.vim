" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 34

" autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q

nnoremap <leader>q :NERDTreeToggle<cr>
nnoremap <leader>a :NERDTreeFocus<cr>
nnoremap <leader>r :NERDTreeFind<cr>

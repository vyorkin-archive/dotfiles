let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :CtrlPBuffer<cr>
nnoremap <silent> <C-b> :CtrlPBuffer<cr>

" Alt-p to clear the cache
nnoremap <Esc>p :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,jm :CtrlP app/models<CR>
map ,jc :CtrlP app/controllers<CR>
map ,jv :CtrlP app/views<CR>
map ,jh :CtrlP app/helpers<CR>

map ,j1 :CtrlP app/forms<CR>
map ,j2 :CtrlP app/serializers<CR>
map ,j3 :CtrlP app/mailers<CR>

map ,ja :CtrlP  app/assets<CR>
map ,jaj :CtrlP app/assets/javascripts<CR>
map ,jas :CtrlP app/assets/stylesheets<CR>

map ,jl :CtrlP lib<CR>
map ,jt :CtrlP lib/tasks<CR>

map ,jp :CtrlP public<CR>
map ,js :CtrlP spec<CR>
map ,jf :CtrlP spec/factories<CR>
map ,jd :CtrlP db<CR>
map ,jdm :CtrlP db/migrate<CR>
map ,jC :CtrlP config<CR>
map ,jV :CtrlP vendor<CR>
map ,jT :CtrlP test<CR>

"Ctrl-m is not good - it overrides behavior of Enter
map ,jj :CtrlPBufTag<CR>

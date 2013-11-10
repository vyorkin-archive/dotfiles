let g:startify_files_number        = 8
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_enable_special      = 0

let g:startify_list_order = [
      \ ['   последнее:'],
      \ 'files',
      \ ['   Сессии:'],
      \ 'sessions',
      \ ['   Закладки:'],
      \ 'bookmarks',
      \ ]

let g:startify_custom_header =
      \ map(split(system('cowsay "муууууу епта" | lolcat'), '\n'), '"   ". v:val') + ['']

" hi StartifyBracket ctermfg=240
" hi StartifyNumber  ctermfg=215
" hi StartifyPath    ctermfg=245
" hi StartifySlash   ctermfg=240
" hi StartifySpecial ctermfg=240
" hi StartifyHeader  ctermfg=114
" hi StartifyFooter  ctermfg=240
" hi StartifyFile    ctermfg=111

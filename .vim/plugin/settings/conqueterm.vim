let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_Color = 2
let g:ConqueTerm_ReadUnfocused = 1 " update conqueterm buffer while we're not looking (for running tests)

" Open up a variety of commands in the ConqueTerm
nmap <silent> <Leader>cc :execute 'ConqueTermSplit bundle exec ./script/console --irb=pry'<CR>
nmap <silent> <Leader>pp :execute 'ConqueTermSplit pry'<CR>

" Mysql
nmap <silent> <Leader>mm :execute ':ConqueTermSplit mysql -h localhost -u root --password=telemarker'
nmap <silent> <Leader>ld :execute ':ConqueTermSplit mysql -h localhost -u root --password=telemarker telemarker_development < sqldump.sql'

let g:ConqueTerm_SendVisKey = '<Leader>e'

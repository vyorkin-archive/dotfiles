" My project-specific hotkeys

" Mysql
nmap <silent> <Leader>wwwdb :execute ':ConqueTermSplit mysql -h localhost -u root --password=telemarker'
nmap <silent> <Leader>wwwdbd :execute ':ConqueTermSplit mysql -h localhost -u root --password=telemarker telemarker_development < sqldump.sql'

hi! link txtBold Identifier
hi! link zshVariableDef Identifier
hi! link zshFunction Function
hi! link rubyControl Statement
hi! link rspecGroupMethods rubyControl
hi! link rspecMocks Identifier
hi! link rspecKeywords Identifier
hi! link rubyLocalVariableOrMethod Normal
hi! link rubyStringDelimiter Constant
hi! link rubyString Constant
hi! link rubyAccess Todo
hi! link rubySymbol Identifier
hi! link rubyConstant Constant
hi! link rubyPseudoVariable Type
hi! link rubyRailsARAssociationMethod Title
hi! link rubyRailsARValidationMethod Title
hi! link rubyRailsMethod Title
hi! link rubyDoBlock Normal
hi! link MatchParen DiffText

hi! link CTagsModule Type
hi! link CTagsClass Type
hi! link CTagsMethod Identifier
hi! link CTagsSingleton Identifier

hi! link javascriptFuncName Type
hi! link javascriptFunction Statement
hi! link javascriptThis Statement
hi! link javascriptParens Normal
hi! link jOperators javascriptStringD
hi! link jId Title
hi! link jClass Title

hi! link NERDTreeFile Constant
hi! link NERDTreeDir Identifier

hi! link sassMixinName Function
hi! link sassDefinition Function
hi! link sassProperty Type
hi! link htmlTagName Type

hi! PreProc guifg=#af87df ctermfg=140 gui=NONE cterm=NONE

"Invisible character colors
hi! NonText guifg=#d6d6d6 ctermfg=252 guibg=NONE ctermbg=NONE term=NONE gui=NONE

hi! CursorLine guibg=#eeeeee ctermbg=255 guifg=NONE ctermfg=NONE
hi! CursorColumn guibg=#eeeeee ctermbg=255 guifg=NONE ctermfg=NONE
hi! ColorColumn guibg=#eeeeee ctermbg=255 guifg=NONE ctermfg=NONE

" hi! LineNR guifg=#262626 ctermbg=232 gui=bold guibg=#121212 ctermfg=235
hi! Constant guifg=#5f87df ctermfg=68
hi! Comment guifg=#008700 ctermfg=28
hi! link htmlLink Include

" hi! Visual ctermbg=233
" hi! EasyMotionTarget guifg=#5fdf00 ctermfg=76 gui=bold cterm=bold
hi! SignColumn ctermbg=NONE guibg=NONE

" Enforce the colors set here
au VimEnter * so ~/.vim/plugin/settings/colors.vim

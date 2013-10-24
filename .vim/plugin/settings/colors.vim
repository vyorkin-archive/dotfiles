
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

hi! PreProc gui=bold

" Separators are a little garish.
" This moves separators, comments, and normal
" text into the same color family as the background.
" Using the http://drpeterjones.com/colorcalc/,
" they are now just differently saturated and
" valued riffs on the background color, making
" everything play together just a little more nicely.
hi! VertSplit guibg=#080808 guifg=#1c1c1c cterm=NONE term=NONE ctermfg=234 ctermbg=232

"Invisible character colors
" hi! NonText guifg=#121212 ctermfg=232 ctermbg=232
" hi! SpecialKey guifg=#121212 ctermfg=232 ctermbg=232

hi! LineNR guifg=#262626 ctermbg=232 gui=bold guibg=#121212 ctermfg=235
hi! link NonText VertSplit
hi! Constant guifg=#00df5f ctermfg=41
hi! Comment guifg=#3A3A3A ctermfg=237
hi! link htmlLink Include
hi! Visual ctermbg=233
hi! EasyMotionTarget guifg=#5fdf00 ctermfg=76 gui=bold cterm=bold
hi! SignColumn ctermbg=232 ctermfg=29 guibg=#080808 guifg=#00875f

hi! ColorColumn guibg=#1c1c1c ctermbg=234
hi! CursorLine guibg=#1c1c1c ctermbg=234 cterm=NONE gui=NONE
hi! CursorColumn guibg=#1c1c1c ctermbg=234 cterm=NONE gui=NONE

" Enforce the colors set here
au VimEnter * so ~/.vim/plugin/settings/colors.vim

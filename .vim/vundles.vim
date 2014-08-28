" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-abolish'
Plugin 'sjbach/lusty'
Plugin 'junegunn/goyo.vim'
Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-dispatch'

" Ruby, Rails, Rake...
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-heroku'
Plugin 'tpope/vim-rbenv'
Plugin 'vim-ruby/vim-ruby'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'skalnik/vim-vroom'
Plugin 'vim-scripts/paredit.vim'
" Plugin 'rking/pry-de'

" Javascript, coffeescript, actionscript
Plugin 'drslump/vim-syntax-js'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'itspriddle/vim-jquery'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jeroenbourgois/vim-actionscript'
Plugin 'mtscout6/vim-cjsx'
Plugin 'marijnh/tern_for_vim'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-classpath'

Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'amdt/vim-niji'

" Go
Plugin 'fatih/vim-go'

" Haskell
Plugin 'dag/vim2hs'

" Erlang
Plugin 'jimenezrick/vimerl'

" Html
Plugin 'mattn/emmet-vim'

" Css, less, sass.
Plugin 'skammer/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'

" Markdown
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'
" Plugin 'skwp/vim-html-escape'
" Plugin 'timcharper/textile.vim'

" Jsx
Plugin 'mxw/vim-jsx'

" Git related...
" Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
" Plugin 'skwp/vim-git-grep-rails-partial'
" Plugin 'tjennings/git-grep-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/git-bump'
Plugin 'mmozuras/vim-github-comment'
Plugin 'mhinz/vim-signify'

Plugin 'godlygeek/csapprox'

" General text editing improvements...
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'

" Plugin 'briandoll/change-inside-surroundings.vim'

" Snippets
" Plugin 'garbas/vim-snipmate'
" Plugin 'scrooloose/snipmate-snippets'

Plugin 'honza/vim-snippets'

Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'svermeulen/vim-easyclip'
Plugin 'bkad/CamelCaseMotion'
" Plugin 'Lokaltog/vim-easymotion'
Plugin 'goldfeld/vim-seek'
Plugin 'vim-scripts/matchit.zip'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nelstrom/vim-visual-star-search'

" General vim improvements
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-sleuth'
Plugin 'vim-scripts/vim-auto-save'

" Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bogado/file-line'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

" Completion & vim shell

" Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'Shougo/vimproc.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

" Ctags
Plugin 'majutsushi/tagbar'

" Plugin 'mattn/webapi-vim'
Plugin 'rking/ag.vim'
Plugin 'mbbill/undotree'

" Plugin 'skwp/YankRing.vim'
Plugin 'skwp/greplace.vim'
" Plugin 'vim-scripts/Conque-Shell'
" Plugin 'tomtom/tlib_vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-scriptease'

" Plugin 'vim-scripts/AnsiEsc.vim'
" Plugin 'vim-scripts/AutoTag'
" Plugin 'vim-scripts/lastpos.vim'
" Plugin 'vim-scripts/sudo.vim'

Plugin 'mattn/webapi-vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" Text objects
Plugin 'tpope/vim-jdaddy'
" Plugin 'austintaylor/vim-indentobject'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'lucapette/vim-textobj-underscore'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'thinca/vim-textobj-function-javascript'
" Plugin 'vim-scripts/argtextobj.vim'

Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Yggdroot/indentLine'

" Cosmetics, airline...
" Plugin 'chrisbra/color_highlight'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'

" Color schemes
Plugin 'noahfrederick/vim-hemisu'
Plugin 'endel/vim-github-colorscheme'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'gregsexton/Gravity'
Plugin 'gregsexton/Muon'
Plugin 'gregsexton/Atom'
Plugin 'tomasr/molokai'
Plugin 'vyorkin/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'

" Plugin 'benmills/vimux'
Plugin 'jgdavey/tslime.vim'
" Plugin 'rizzatti/funcoo.vim'
" Plugin 'rizzatti/dash.vim'

" Plugin 'mhinz/vim-startify'
" Plugin 'wikitopian/hardmode'
Plugin 'guns/xterm-color-table.vim'

" Plugin 'Zuckonit/vim-airline-tomato'
" Plugin 'FredKSchott/CoVim'

"Filetype plugin indent on is required by vundle
filetype plugin indent on

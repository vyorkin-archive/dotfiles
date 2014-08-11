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

Bundle 'gmarik/vundle'

Bundle 'tommcdo/vim-exchange'
Bundle 'tpope/vim-abolish'
Bundle 'sjbach/lusty'
Bundle 'junegunn/goyo.vim'
Bundle 'jeetsukumaran/vim-buffergator'

Bundle 'tpope/vim-vinegar'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-dispatch'

" Ruby, Rails, Rake...
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-heroku'
Bundle 'tpope/vim-rbenv'
Bundle 'vim-ruby/vim-ruby'
Bundle 'sunaku/vim-ruby-minitest'
Bundle 'vim-scripts/paredit.vim'
Bundle 'amdt/vim-niji'

" Javascript, coffeescript, actionscript
Bundle 'pangloss/vim-javascript'
Bundle 'itspriddle/vim-jquery'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jeroenbourgois/vim-actionscript'

" Clojure
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-leiningen'
Bundle 'tpope/vim-projectionist'
Bundle 'tpope/vim-classpath'

Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'

" Go
Bundle 'fatih/vim-go'

" Haskell
Bundle 'dag/vim2hs'

" Erlang
Bundle 'jimenezrick/vimerl'

" Html, Xml, Css, Markdown...
Bundle 'skammer/vim-css-color'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'

Bundle 'tpope/vim-markdown'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'suan/vim-instant-markdown'
Bundle 'nelstrom/vim-markdown-preview'
" Bundle 'skwp/vim-html-escape'
" Bundle 'timcharper/textile.vim'
Bundle 'mxw/vim-jsx'

" Git related...
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'
" Bundle 'skwp/vim-git-grep-rails-partial'
" Bundle 'tjennings/git-grep-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/git-bump'
Bundle 'mhinz/vim-signify'

Bundle 'godlygeek/csapprox'

" General text editing improvements...
" Bundle 'AndrewRadev/splitjoin.vim'
" Bundle 'Raimondi/delimitMate'

" Bundle 'briandoll/change-inside-surroundings.vim'

" Snippets
" Bundle 'garbas/vim-snipmate'
" Bundle 'scrooloose/snipmate-snippets'

Bundle 'honza/vim-snippets'

Bundle 'godlygeek/tabular'
Bundle 'mattn/emmet-vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'svermeulen/vim-easyclip'
Bundle 'bkad/CamelCaseMotion'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'goldfeld/vim-seek'
Bundle 'vim-scripts/matchit.zip'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'nelstrom/vim-visual-star-search'

" General vim improvements
Bundle 'vim-scripts/vim-auto-save'

" Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'bogado/file-line'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'

" Completion & vim shell

" Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/neosnippet.vim'
" Bundle 'Shougo/neosnippet-snippets'
" Bundle 'Shougo/vimproc.vim'

Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

" Ctags
Bundle 'majutsushi/tagbar'

" Bundle 'mattn/webapi-vim'
Bundle 'rking/ag.vim'
Bundle 'mbbill/undotree'

" Bundle 'skwp/YankRing.vim'
Bundle 'skwp/greplace.vim'
" Bundle 'vim-scripts/Conque-Shell'
" Bundle 'tomtom/tlib_vim'

Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-scriptease'

" Bundle 'vim-scripts/AnsiEsc.vim'
" Bundle 'vim-scripts/AutoTag'
" Bundle 'vim-scripts/lastpos.vim'
" Bundle 'vim-scripts/sudo.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

" Text objects
Bundle 'tpope/vim-jdaddy'
" Bundle 'austintaylor/vim-indentobject'
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'kana/vim-textobj-datetime'
Bundle 'kana/vim-textobj-entire'
Bundle 'kana/vim-textobj-function'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-indent'
Bundle 'lucapette/vim-textobj-underscore'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'thinca/vim-textobj-function-javascript'
" Bundle 'vim-scripts/argtextobj.vim'

Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'Yggdroot/indentLine'

" Cosmetics, airline...
" Bundle 'chrisbra/color_highlight'
Bundle 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'

" Color schemes
Bundle 'noahfrederick/vim-hemisu'
Bundle 'endel/vim-github-colorscheme'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'gregsexton/Gravity'
Bundle 'gregsexton/Muon'
Bundle 'gregsexton/Atom'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nanotech/jellybeans.vim'

" Bundle 'benmills/vimux'
" Bundle 'jgdavey/tslime.vim'
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'

" Bundle 'mhinz/vim-startify'
" Bundle 'wikitopian/hardmode'
Bundle 'guns/xterm-color-table.vim'

" Bundle 'Zuckonit/vim-airline-tomato'
" Bundle 'FredKSchott/CoVim'

"Filetype plugin indent on is required by vundle
filetype plugin indent on

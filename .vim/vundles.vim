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

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Ruby, Rails, Rake...
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-bundler'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'vim-scripts/Specky.git'
Bundle 'skwp/vim-ruby-conque'
Bundle 'ck3g/vim-change-hash-syntax'

" Other languages
Bundle 'briancollins/vim-jst'
Bundle 'pangloss/vim-javascript'

" Html, Xml, Css, Markdown...
Bundle 'groenewege/vim-less'
Bundle 'itspriddle/vim-jquery'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nelstrom/vim-markdown-preview'
Bundle 'skwp/vim-html-escape'
Bundle 'timcharper/textile.vim'

" Scientific stuff
Bundle 'gregsexton/VimCalc'

" Git related...
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'
Bundle 'skwp/vim-git-grep-rails-partial'
Bundle 'tjennings/git-grep-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'

" General text editing improvements...
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'Raimondi/delimitMate'

Bundle 'briandoll/change-inside-surroundings.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'godlygeek/tabular'

Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/matchit.zip'
Bundle 'terryma/vim-multiple-cursors'

" General vim improvements
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'bogado/file-line'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/webapi-vim'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'dsummersl/gundo.vim'

Bundle 'skwp/YankRing.vim'
Bundle 'skwp/greplace.vim'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/AnsiEsc.vim'
Bundle 'vim-scripts/AutoTag'
" Bundle 'vim-scripts/lastpos.vim'
Bundle 'vim-scripts/sudo.vim'
" Bundle 'xsunsmile/showmarks'
" Bundle 'xolox/vim-misc'
" Bundle 'xolox/vim-session'

" Text objects
" Bundle 'austintaylor/vim-indentobject'
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'kana/vim-textobj-datetime'
Bundle 'kana/vim-textobj-entire'
Bundle 'kana/vim-textobj-function'
Bundle 'kana/vim-textobj-user'
Bundle 'lucapette/vim-textobj-underscore'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'thinca/vim-textobj-function-javascript'
Bundle 'vim-scripts/argtextobj.vim'

" Cosmetics, airline...
Bundle 'chrisbra/color_highlight'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/TagHighlight'

" Color schemes
Bundle 'endel/vim-github-colorscheme'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'flazz/vim-colorschemes'
Bundle 'gregsexton/Gravity'
Bundle 'gregsexton/Muon'
Bundle 'gregsexton/Atom'

 Bundle 'tomtom/quickfixsigns_vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'jgdavey/tslime.vim'
Bundle 'mattn/emmet-vim'
Bundle 'sunaku/vim-ruby-minitest'
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'
Bundle 'wikitopian/hardmode'
Bundle 'jeroenbourgois/vim-actionscript'
Bundle 'guns/xterm-color-table.vim'

Bundle "MarcWeber/vim-addon-async"
Bundle "MarcWeber/vim-addon-signs"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "MarcWeber/vim-addon-rdebug"

"Filetype plugin indent on is required by vundle
filetype plugin indent on

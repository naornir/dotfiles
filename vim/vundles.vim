" init vundle
set nocompatible " disable vi compatibility
filetype off
"let &rtp .= ',' . $vimfiles . "/bundle/vundle"
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" vundles
Bundle 'kien/ctrlp.vim'
Bundle 'elentok/mailr.vim'
Bundle 'elentok/run.vim'
Bundle 'elentok/plaintasks.vim'
Bundle 'elentok/alternate-spec.vim'
Bundle 'elentok/supertagger'
Bundle 'elentok/spec-runner.vim'
Bundle 'elentok/todo.vim'
Bundle 'benmills/vimux'
Bundle 'sickill/vim-monokai'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'danro/rename.vim'
Bundle 'godlygeek/tabular'
Bundle 'applescript.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "SirVer/ultisnips"
"Bundle "snipmate-snippets"
"Bundle "garbas/vim-snipmate"
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml'
Bundle 'elentok/vim-rails-extra'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'yaml.vim'
Bundle 'avakhov/vim-yaml'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'groenewege/vim-less'
Bundle 'scrooloose/syntastic.git'
Bundle 'mileszs/ack.vim'
Bundle 'jtratner/vim-flavored-markdown.git'
Bundle 'elentok/vim-markdown-folding'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'skwp/greplace.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-dispatch'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-repeat'
Bundle "nelstrom/vim-visual-star-search"
Bundle 'iandoe/vim-osx-colorpicker'
Bundle 'vim-scripts/fish-syntax'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'

" text objects:
Bundle 'michaeljsmith/vim-indent-object'

" file formats
Bundle 'evanmiller/nginx-vim-syntax'

" Go language
"Bundle 'jnwhiteh/vim-golang'
"Bundle 'go-vim'

if file_readable(expand("~/.dotlocal/vundles.vim"))
  source ~/.dotlocal/vundles.vim
endif

filetype plugin indent on

" http://dougblack.io/words/a-good-vimrc.html
colorscheme badwolf         " awesome colorscheme

syntax enable           " enable syntax processing

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set nocompatible              " be iMproved, required

Plugin 'tpope/vim-fugitive'     " Git plugin

Plugin 'scrooloose/syntastic'   " Syntax checking

Plugin 'editorconfig/editorconfig-vim' " EditorConfig

Plugin 'scrooloose/nerdtree'    " File Explorer

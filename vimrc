set nocompatible " Set Vim to run in the full-featured mod

set autoindent              " Automatically indent on new lines
set smartindent             " Change indentation to match a local context
set ignorecase              " Case-insensitive searching.
set smartcase               " But case-sensitive if expression contains a capital letter.
set wildmenu                " Enhanced command line completion.
set wildmode=list:longest   " Complete files like a shell.
set list                    " Show invisibles
set listchars=tab:▸\ ,eol:¬ " Set invisible characters
set ruler                   " Show cursor position in status bar
set title                   " Change terminal title to current file
set tabstop=2               " Global tab width.
set shiftwidth=2            " And again, related.
set expandtab               " Use spaces instead of tabs
au FileType * setl fo-=cro  " Turn off auto-commenting
let mapleader = "\\"        " Map leader to '\'

call pathogen#infect() " Run Pathogen to load the bundle

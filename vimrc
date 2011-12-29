set nocompatible " Set Vim to run in the full-featured mod

syntax enable
filetype plugin indent on
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
set laststatus=2            " Show the status line all the time
set hlsearch                " Highlight search results
set incsearch               " Make search incremental
set foldmethod=manual       " Make the fold method manual
set textwidth=80            " Set width of text to 80 chars for wrapping and such
set formatoptions-=t        " Don't auto-wrap text based on textwidth
set formatoptions-=c        " Don't auto-wrap comments based on textwidth
set formatoptions-=r        " Don't auto-comment the next line when pressing <Enter> after a comment
set formatoptions-=o        " Don't auto-comment the next line when pressing 'o' <after a comment
set formatoptions+=M        " Don't insert spaces when joining lines
set colorcolumn=+1          " Indicate the 80 characters column

" These are project plugin settings. Normally, these include the 'b' option,
" which uses the file explorer of the OS to locate the project path. Unfortunately,
" this is a bit buggy with GVim on Mint (maybe others as well, but at least this one),
" so I've removed it explicitly.
let g:proj_flags='imst'
" Source a special bashrc for vim
set shell=/bin/bash\ --rcfile\ ~/.vimbashrc

" Set status line; I'm not completely sure how this works, I should figure this out
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Some nice buffer command mappings
nmap <silent> <Left> :bp<Cr>
nmap <silent> <Right> :bn<Cr>
nmap <silent> <Up> :bd<Cr>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nmap <Leader>h <Plug>HexHighlightToggle
nmap <F5> :TlistToggle<CR>
nmap <F6> <Plug>ToggleProject

call pathogen#infect() " Run Pathogen to load the bundle

" Set font based on vim GUI
if has("gui_macvim")
  set guifont=DejaVu\ Sans\ Mono:h14
else
  set guifont=Droid\ Sans\ Mono\ 12
endif

filetype plugin on
set hidden           " Use buffers as hidden
set antialias        " Smooth fonts
set encoding=utf-8   " Use UTF-8 everywhere
set guioptions-=T    " Hide toolbar
set guioptions-=m    " Hide menu
set nowrap           " Don't wrap text
set guioptions-=r    " Don't show right scrollbar
set guioptions-=l    " Don't show left scrollbar?
set vb t_vb=         " Turn off error and visual bells

set background=dark
colorscheme solarized
call togglebg#map("<F4>")

" Save when losing focus
au FocusLost * if !(bufname('%') == '') | :up | endif
au TabLeave * if !(bufname('%') == '') | :up | endif
au BufLeave * if !(bufname('%') == '') | :up | endif

" Save and load folds when entering and leaving a buffer
au BufWinLeave * if !(bufname('%') == '') | mkview | endif
au BufWinEnter * if !(bufname('%') == '') | silent loadview | endif

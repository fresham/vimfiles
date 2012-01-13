" Set font based on vim GUI
if has("gui_macvim")
  set guifont=DejaVu\ Sans\ Mono:h14
else
  set guifont=courier\ 14
endif

set hidden           " Use buffers as hidden
set antialias        " Smooth fonts
set encoding=utf-8   " Use UTF-8 everywhere
set guioptions-=T    " Hide toolbar
set nowrap           " Don't wrap text
set guioptions-=r    " Don't show right scrollbar
set guioptions-=l    " Don't show left scrollbar?

colorscheme cody

" Save when losing focus
au FocusLost * if !(bufname('%') == '') | :up | endif
au TabLeave * if !(bufname('%') == '') | :up | endif
au BufLeave * if !(bufname('%') == '') | :up | endif

" Reload UltiSnips when losing focus
au FocusLost * UltiSnipsReset
au TabLeave * UltiSnipsReset
au BufLeave * UltiSnipsReset

" Save and load folds when entering and leaving a buffer
au BufWinLeave * if !(bufname('%') == '') | mkview | endif
au BufWinEnter * if !(bufname('%') == '') | silent loadview | endif

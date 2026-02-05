set hlsearch
set mouse=v

" General netrw behavior
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_altv = 1          " Open vertical splits to the right
let g:netrw_browse_split = 4  " Open files in the 'previous' window

" Startup and netrw proportion fix
" This ensures you start in the text area, not the sidebar.
augroup ProjectDrawer
  autocmd!
  " Open Netrw, then jump to the blank window on the right
  autocmd VimEnter * Lexplore | wincmd l
augroup END

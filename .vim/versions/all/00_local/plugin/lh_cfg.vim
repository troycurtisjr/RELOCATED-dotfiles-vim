
":let g:usemarks=0

" Centering the newly jumped to marker *sounds* like a good idea, but in
" practice it is really disorienting.
let g:marker_center=0

imap <C-G>     <Plug>MarkersJumpF
map <C-G>      <Plug>MarkersJumpF
"imap <C-M>     <Plug>MarkersJumpB
"map <C-M>      <Plug>MarkersJumpB
"imap <C-<>      <Plug>MarkersMark
nmap <C-E>      <Plug>MarkersMark
map <C-E>      <Plug>MarkersMark

" Set this if you don't want if/else... and such snippets to be expanded for
" you
"let g:lh_cpp_snippets=0

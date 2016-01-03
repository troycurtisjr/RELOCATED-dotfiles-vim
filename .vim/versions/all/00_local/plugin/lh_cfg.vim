"=============================================================================
" File:         plugin/lh_cfg.vim                              {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      02nd Jan 2016
"------------------------------------------------------------------------
" Description:
"       This file configuration functionality for the various lh plugins. 
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================


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

"=============================================================================
" vim600: set fdm=marker:

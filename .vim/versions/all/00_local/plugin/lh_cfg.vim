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


" In case you don't like the marks, but some snippets don't seem to work
" with marks disabled.
"let g:usemarks=0

" Centering the newly jumped to marker *sounds* like a good idea, but in
" practice it is really disorienting.
let g:marker_center=0

imap  <C-F> <Plug>MarkersJumpF
map   <C-F> <Plug>MarkersJumpF
"imap <C-M> <Plug>MarkersJumpB
"map  <C-M> <Plug>MarkersJumpB
map   <C-E> <Plug>MarkersMark

" Set this if you don't want if/else... and such snippets to be expanded for
" you
"let g:lh_cpp_snippets=0

" Disable some syntax additions I don't need, hopefully speeding things up.

" lh's additions.
let g:c_no_assign_in_condition  = 1
let g:c_no_hl_fallthrough_case  = 1
let g:cpp_no_catch_by_reference = 1
let g:cpp_no_hl_c_cast          = 1
let g:cpp_no_hl_funcdef         = 1
let g:cpp_no_hl_throw_spec      = 1

" From the standard distrution.
let g:c_no_curly_error          = 1
let g:c_no_bracket_error        = 1

"=============================================================================
" vim600: set fdm=marker:

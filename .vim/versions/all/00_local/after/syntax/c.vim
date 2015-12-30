"=============================================================================
" File:         syntax/c.vim                                      {{{1
" Author:       troy
"------------------------------------------------------------------------
" Description:
"       These are items to be loaded after c syntax has loaded.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim

" Pull in a pretty nice doxygen "sub-syntax"
source $VIMRUNTIME/syntax/doxygen.vim

" Customize the c/c++ coding options.
set cinoptions+=(0,w1,W4

set spell " The syntax for c/cpp is pretty smart about spell checking.

"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

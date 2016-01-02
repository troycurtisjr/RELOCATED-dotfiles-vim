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

set foldmethod=syntax
set foldenable

syn clear cBlock
" This disables detection of a namespace definition as a cBlock that is thus
" folded.  This way the namespaces are not folded automatically, making
" folding much more useful for c++
syn region cBlock start="\(namespace\(\s\|\n\)\+\w\+\(\s\|\n\)*\)\@<!{" end="}" transparent fold

"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

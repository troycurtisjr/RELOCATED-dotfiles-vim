"=============================================================================
" File:         ftdetect/qmake.vim                                {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      03rd Jan 2016
"------------------------------------------------------------------------
" Description:
"       This file allow vim to automatically detect qmake files.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim

au BufRead,BufNewFile *.pr[io] set filetype=qmake

"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

"=============================================================================
" File:         plugin/supertab_cfg.vim                           {{{1
" Author:       troy
let s:k_version = 001
" Created:      27th Dec 2015
"------------------------------------------------------------------------
" Description:
"               Configuration for the supertab plugin.       
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_supertab_cfg")
      \ && (g:loaded_supertab_cfg >= s:k_version)
      \ && !exists('g:force_reload_supertab_cfg'))
  finish
endif
let g:loaded_supertab_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
let g:SuperTabDefaultCompletionType = "context"
" Commands and Mappings }}}1
"------------------------------------------------------------------------
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

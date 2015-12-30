"=============================================================================
" File:         plugin/lh-tags.vim                                {{{1
" Author:       troy
let s:k_version = 001
" Created:      27th Dec 2015
"------------------------------------------------------------------------
" Description:
"       This is customization of the lh-tags plugin.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_after_lh_tags")
      \ && (g:loaded_after_lh_tags >= s:k_version)
      \ && !exists('g:force_reload_after_lh_tags'))
  finish
endif
let g:loaded_after_lh_tags = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1

map <C-X>] <Plug>CTagsSplitOpen

" Commands and Mappings }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

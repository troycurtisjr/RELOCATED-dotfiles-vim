"=============================================================================
" File:         plugin/leader.vim                                 {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      31st Dec 2015
"------------------------------------------------------------------------
" Description:
"       This is a customization of the leader functionality.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_local_leader")
      \ && (g:loaded_local_leader >= s:k_version)
      \ && !exists('g:force_reload_local_leader'))
  finish
endif
let g:loaded_leader = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
let maplocalleader = ","
let mapleader = "\\"

" Use , instead of default ; for cpp templates so that it doesn't interfere
" with ;
let g:lh_cpp_templates_leader = ','


" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«leader».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

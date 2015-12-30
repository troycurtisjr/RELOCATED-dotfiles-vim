"=============================================================================
" File:         plugin/NERD_commenter.vim                         {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      29th Dec 2015
"------------------------------------------------------------------------
" Description:
"       This file customizes NERD commenter behavior.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_after_NERD_commenter")
      \ && (g:loaded_after_NERD_commenter >= s:k_version)
      \ && !exists('g:force_reload_after_NERD_commenter'))
  finish
endif
let g:loaded_after_NERD_commenter = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
nmap \<Space> <Plug>NERDCommenterToggle
xmap \<Space> <Plug>NERDCommenterToggle
" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«NERD_commenter».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

"=============================================================================
" File:         plugin/notes_cfg.vim                              {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      02nd Jan 2016
"------------------------------------------------------------------------
" Description:
"       This file configuration functionality for the notes plugin.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_notes_cfg")
      \ && (g:loaded_notes_cfg >= s:k_version)
      \ && !exists('g:force_reload_notes_cfg'))
  finish
endif
let g:loaded_notes_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
let g:notes_directories = [ "~/Notes" ]

" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«notes_cfg».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

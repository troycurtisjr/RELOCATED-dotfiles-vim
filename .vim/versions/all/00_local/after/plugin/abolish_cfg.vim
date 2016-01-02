"=============================================================================
" File:         plugin/abolish_cfg.vim                            {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      01st Jan 2016
"------------------------------------------------------------------------
" Description:
"       This file provides my custom configuration for the abolish plugin.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_abolish_cfg")
      \ && (g:loaded_abolish_cfg >= s:k_version)
      \ && !exists('g:force_reload_abolish_cfg'))
  finish
endif
let g:loaded_abolish_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1

" I *never* spell receive right the first time, then with tab-complete, it
" just proliferates! 
:Abolish reciev{e,er,ing} receiv{}

" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«abolish_cfg».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

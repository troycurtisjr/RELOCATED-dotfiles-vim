"=============================================================================
" File:         plugin/tags_cfg.vim                               {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      02nd Jan 2016
"------------------------------------------------------------------------
" Description:
"       This file provides some tags nicties.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_tags_cfg")
      \ && (g:loaded_tags_cfg >= s:k_version)
      \ && !exists('g:force_reload_tags_cfg'))
  finish
endif
let g:loaded_tags_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1

augroup troy_tags_custom_autoload
  au!
  au BufEnter * call troy#tags#setup()
augroup END

" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«tags_cfg».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

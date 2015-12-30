"=============================================================================
" File:         plugin/gitv_cfg.vim                               {{{1
" Author:       troy
let s:k_version = 001
" Created:      21st Dec 2015
"------------------------------------------------------------------------
" Description:
"       This configures gitv functionality.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_gitv_cfg")
      \ && (g:loaded_gitv_cfg >= s:k_version)
      \ && !exists('g:force_reload_gitv_cfg'))
  finish
endif
let g:loaded_gitv_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
let g:Gitv_DoNotMapCtrlKey = 1 
" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«gitv_cfg».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

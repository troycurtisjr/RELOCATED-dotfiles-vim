"=============================================================================
" File:         plugin/ctrlp_cfg.vim                              {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      31st Dec 2015
"------------------------------------------------------------------------
" Description:
"       Customize the Ctrl-P plugin.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_ctrlp_cfg")
      \ && (g:loaded_ctrlp_cfg >= s:k_version)
      \ && !exists('g:force_reload_ctrlp_cfg'))
  finish
endif
let g:loaded_ctrlp_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
" I know the name of the plugin *is* Ctrl-P, but that is already in muscle
" memory for the ACSB few query stack command.
let g:ctrlp_map = "<c-_>"
" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«ctrlp_cfg».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

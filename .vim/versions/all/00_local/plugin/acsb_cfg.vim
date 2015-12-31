"=============================================================================
" File:         plugin/acsb_cfg.vim                               {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      31st Dec 2015
"------------------------------------------------------------------------
" Description:
"       This is a configuration file for the ACSB plugin.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_acsb_cfg")
      \ && (g:loaded_acsb_cfg >= s:k_version)
      \ && !exists('g:force_reload_acsb_cfg'))
  finish
endif
let g:loaded_acsb_cfg = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
" Do not load the acsb autoload file.
let g:acsb_loaded_autoload_cscope = 1

" Create custom mappings, inspired by acs_autoload_cscope, but
" using acsb instead of the painful built-in version.
noremap <C-\>s :ACSBfindsym ref <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>g :ACSBfindsym def <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>d :ACSBfindsym called <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>c :ACSBfindsym caller <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>t :ACSBfindsym txt <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>e :ACSBfindsym grep <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>f :ACSBfindsym file <c-r>=expand("<cword>")<cr><cr>
noremap <C-\>i :ACSBfindsym inc <c-r>=expand("<cword>")<cr><cr>

augroup acsb_custom_autoload_cscope
  au!
  au BufEnter * call troy#acsb#setupcscopedir()
augroup END
" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«acsb_cfg».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

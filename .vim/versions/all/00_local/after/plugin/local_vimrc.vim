"=============================================================================
" File:         plugin/local_vimrc.vim                            {{{1
" Author:       troy
let s:k_version = 001
"------------------------------------------------------------------------
" Description:
"       This file configures the local_vimrc plugin.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_after_local_vimrc")
      \ && (g:loaded_after_local_vimrc >= s:k_version)
      \ && !exists('g:force_reload_local_vimrc'))
  finish
endif
let g:loaded_local_vimrc = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------

" Some debug options to help figure out what is going wrong with inclusions
"call lh#local_vimrc#verbose(5)
"call lh#list#verbose(5)
"call lh#path#verbose(5)


call lh#path#munge(g:local_vimrc_options.whitelist, fnamemodify($HOME.'/working', ':p'))
call lh#path#munge(g:local_vimrc_options.whitelist, fnamemodify('/home/data/working', ':p'))

"echo g:local_vimrc_options 
"------------------------------------------------------------------------
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

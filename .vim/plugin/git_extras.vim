"=============================================================================
" File:         plugin/git_extras.vim                             {{{1
" Author:       troy
let s:k_version = 001
" Created:      27th Dec 2015
"------------------------------------------------------------------------
" Description:
"       This is a collection of personal git extras.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
if &cp || (exists("g:loaded_git_extras")
      \ && (g:loaded_git_extras >= s:k_version)
      \ && !exists('g:force_reload_git_extras'))
  finish
endif
let g:loaded_git_extras = s:k_version
let s:cpo_save=&cpo
set cpo&vim
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1

" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
if executable("git") == 1
  let s:git_name = lh#os#system("git config --get user.name")
  let s:git_email = lh#os#system("git config --get user.email")
  if len(s:git_name) > 0
    if len(s:git_name) > 0
      let g:dox_author = s:git_name . " <" . s:git_email . ">"
      let g:author = g:dox_author
    else
      let g:dox_author = s:git_name 
      let g:author = g:dox_author
    endif
  endif
endif 
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

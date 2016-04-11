"=============================================================================
" File:         autoload/troy/tags.vim                            {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      02nd Jan 2016
"------------------------------------------------------------------------
" Description:
"       Functions to setup tags.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim
"------------------------------------------------------------------------
" ## Misc Functions     {{{1
" # Version {{{2
function! troy#tags#version()
  return s:k_version
endfunction

" # Debug   {{{2
if !exists('s:verbose')
  let s:verbose = 0
endif
function! troy#tags#verbose(...)
  if a:0 > 0 | let s:verbose = a:1 | endif
  return s:verbose
endfunction

function! s:Verbose(expr)
  if s:verbose
    echomsg a:expr
  endif
endfunction

function! troy#tags#debug(expr)
  return eval(a:expr)
endfunction


"------------------------------------------------------------------------
" ## Exported functions {{{1
function! troy#tags#setup()
  let currentdir = expand('<afile>:p:h')
  let pathpatterns = [ "tags", "cscope/tags", ".tags" ]

  let homexpr = troy#path#home_base_regex()

  call s:Verbose("Looking in parents of " . currentdir . " stopping at " . homexpr)

  let fileoptions = lh#path#find_in_parents( currentdir, pathpatterns, "file",
        \                                    homexpr)
                                             

  for tagfilepath in fileoptions
        exe 'setlocal tags+='.tagfilepath
  endfor

endfunction

"------------------------------------------------------------------------
" ## Internal functions {{{1

"------------------------------------------------------------------------
" }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

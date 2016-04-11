"=============================================================================
" File:         autoload/troy/path.vim                            {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      16th Jan 2016
"------------------------------------------------------------------------
" Description:
"       This file holds path related helper functions.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim
"------------------------------------------------------------------------
" ## Misc Functions     {{{1
" # Version {{{2
function! troy#path#version()
  return s:k_version
endfunction

" # Debug   {{{2
if !exists('s:verbose')
  let s:verbose = 0
endif
function! troy#path#verbose(...)
  if a:0 > 0 | let s:verbose = a:1 | endif
  return s:verbose
endfunction

function! s:Verbose(expr)
  if s:verbose
    echomsg a:expr
  endif
endfunction

function! troy#path#debug(expr)
  return eval(a:expr)
endfunction


"------------------------------------------------------------------------
" ## Exported functions {{{1

function! troy#path#home_base_regex()
  let homebase = fnamemodify($HOME, ":p:h:h")

  let homexpr = "^" . homebase . "/[^/]\\+/\\?$"

  return homexpr

endfunction

function! troy#path#topgitdir(startdir)
  let pathpatterns = [ '.git' ]

  "echo "CurrentDir: " . currentdir . " Path Patterns: " . join(pathpatterns,",")

  let fileoptions = lh#path#find_in_parents(a:startdir, pathpatterns, "directory",
        \                                    troy#path#home_base_regex())

  "echo "File options: " . join(fileoptions, ',')

  if len(fileoptions) > 0
    return fnamemodify(fileoptions[0], ":p:h:h")
  endif

  return
endfunction
"------------------------------------------------------------------------
" ## Internal functions {{{1

"------------------------------------------------------------------------
" }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

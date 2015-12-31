"=============================================================================
" File:         autoload/troy/acsb.vim                            {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      31st Dec 2015
"------------------------------------------------------------------------
" Description:
"       These are local autoloaded functions for acsb.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim
"------------------------------------------------------------------------
" ## Misc Functions     {{{1
" # Version {{{2
function! troy#acsb#version()
  return s:k_version
endfunction

" # Debug   {{{2
if !exists('s:verbose')
  let s:verbose = 0
endif
function! troy#acsb#verbose(...)
  if a:0 > 0 | let s:verbose = a:1 | endif
  return s:verbose
endfunction

function! s:Verbose(expr)
  if s:verbose
    echomsg a:expr
  endif
endfunction

function! troy#acsb#debug(expr)
  return eval(a:expr)
endfunction


"------------------------------------------------------------------------
" ## Exported functions {{{1

function! troy#acsb#setupcscopedir()
  if exists("g:acsb_cscope_dir")
        \ && isdirectory(g:acsb_cscope_dir)
     return
  endif

  let currentdir = expand('<afile>:p:h')
  let pathpatterns = [ "cscope.out", "cscope/cscope.out" ]

  call s:Verbose("Looking in parents of " . currentdir)

  let fileoptions = lh#path#find_in_parents( currentdir, pathpatterns, "file", $HOME) 

  if len(fileoptions) > 0
    call s:Verbose(join(fileoptions, ','))

    let g:acsb_cscope_dir = fnamemodify(fileoptions[0], ":h")

      if !cscope_connection(3, "out", g:acsb_cscope_dir)
        let save_csvb = &csverb
        set nocsverb
        exe "cs add " . fileoptions[0] . " " . fnamemodify(g:acsb_cscope_dir, ":h")
        set csverb
        let &csverb = save_csvb
      endif

    call s:Verbose(join(fileoptions, ','))
    call s:Verbose(g:acsb_cscope_dir)
  endif

endfunction
"------------------------------------------------------------------------
" ## Internal functions {{{1

"------------------------------------------------------------------------
" }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

" Plugin: acsb.vim --- Buffered frontend for CScope
" 
" License:
"   This program is free software; you can redistribute it and/or modify 
"   it under the terms of the GNU General Public License as published by
"   the Free Software Foundation; either version 2 of the License, or 
"   (at your option) any later version. 
"
" Version: 200608xx
"
" Author: Gabor Fekete
" Creation Date: 2005.04.29, Fri
" Email: mocsok@loveable.com
" 
" For coders:
" s:acsb_qrescnt_{i} = the number of results belonging to the ith query
" s:acsb_qres_{i}_{j}_1 = The file name of the query result belonging to
"                        the jth result of the ith query.
"                   _2 = The function name
"                   _3 = The line number
"                   _4 = Line contents
" 

if exists("loaded_acsb")
	finish
endif

let loaded_acsb = 1

let g:acsb_cscope_dir = ""

command! -nargs=* ACSBfindsym call ACSB#find_symbol(<f-args>)

command! -nargs=* ACSBVSplitfindsym vsplit | call ACSB#find_symbol(<f-args>)
command! -nargs=* ACSBSplitfindsym  split | call ACSB#find_symbol(<f-args>)

if !exists(":ACSBQueries")
  command ACSBQueries keepjumps :call ACSB#showBuff(0, 0)
endif
if !exists(":ACSBStacks")
  command ACSBStacks keepjumps :call ACSB#showStackBuff(-1, -1)
endif
if !exists(":ACSBNewStack")
  command -nargs=1 ACSBNewStack keepjumps :call ACSB#newStack(<f-args>)
endif

" Key bindings ------ CHANGE these to fit your needs --------
if !exists('g:acsb_nomaps')
  noremap <A-1> :ACSBfindsym ref <c-r>=expand("<cword>")<cr>
  noremap <A-2> :ACSBfindsym def <c-r>=expand("<cword>")<cr>
  noremap <A-3> :ACSBfindsym called <c-r>=expand("<cword>")<cr>
  noremap <A-4> :ACSBfindsym caller <c-r>=expand("<cword>")<cr>
  noremap <A-5> :ACSBfindsym txt <c-r>=expand("<cword>")<cr>
  noremap <A-6> :ACSBfindsym grep <c-r>=expand("<cword>")<cr>
  noremap <A-7> :ACSBfindsym file <c-r>=expand("<cword>")<cr>
  noremap <A-8> :ACSBfindsym inc <c-r>=expand("<cword>")<cr>
  inoremap <A-Left> <ESC>:call ACSB#stack_jump(-1)<cr>
  inoremap <A-Right> <ESC>:call ACSB#stack_jump(1)<cr>
  noremap <A-Left> :call ACSB#stack_jump(-1)<cr>
  noremap <A-Right> :call ACSB#stack_jump(1)<cr>
  map <silent> <C-Q> :ACSBQueries<cr>
  imap <silent> <C-Q> <ESC>:ACSBQueries<cr>
  noremap <C-Down> :call ACSB#iterateQResult(1)<cr>
  noremap <C-Up> :call ACSB#iterateQResult(-1)<cr>
  map <silent> <C-P> :ACSBStacks<cr>
  imap <silent> <C-P> <ESC>:ACSBStacks<cr>
  map <silent> <C-R> :!codelight-rebuild-cscopedb --no-files "%:p:h" . cscope-data kscope-data codelight-data<cr>
  imap <silent> <C-R> <ESC>:!codelight-rebuild-cscopedb --no-files "%:p:h" . cscope-data kscope-data codelight-data<cr>
endif
" -----------------------------------------------------------

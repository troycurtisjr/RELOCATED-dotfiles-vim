"=============================================================================
" File:         ftdetect/java.vim                                 {{{1
" Author:       Troy Curtis Jr <troycurtisjr@gmail.com>
let s:k_version = 001
" Created:      09th Apr 2016
"------------------------------------------------------------------------
" Description:
"       Some helper options for use with java.
"
"------------------------------------------------------------------------
" }}}1
"=============================================================================

let s:cpo_save=&cpo
set cpo&vim

" 
" Set the ant build configuration
"
if !exists("b:ant_build_file") || !filereadable(b:ant_build_file)
  let currentdir = expand('<afile>:p:h')
  let pathpatterns = [ 'build.xml', 'build/build.xml' ]

  "echo "CurrentDir: " . currentdir . " Path Patterns: " . join(pathpatterns,",")

  let fileoptions = lh#path#find_in_parents(currentdir, pathpatterns, "file",
        \                                    troy#path#home_base_regex())

  "echo "File options: " . join(fileoptions, ',')

  if len(fileoptions) > 0
    let b:ant_build_file=fileoptions[0]
  endif
endif

if exists("b:ant_build_file")
let &l:makeprg="ant -f " . b:ant_build_file . " compile"
else
setlocal makeprg=ant 
endif

setlocal efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%# 

"
" Get gf and its ilk working
"
if !exists('b:git_topdir') || !isdirectory(b:git_topdir)
  let currentdir=expand('<afile>:p:h')
  let b:git_topdir=troy#path#topgitdir(currentdir) 
endif

if exists('b:git_topdir')
  "let &path=&path . ',' . b:git_topdir . "/**"
endif

setlocal include=^\\s*import\\s*
"set  includeexpr=substitute(v:fname,'\\.','/','g')
setlocal suffixesadd+=.java
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:

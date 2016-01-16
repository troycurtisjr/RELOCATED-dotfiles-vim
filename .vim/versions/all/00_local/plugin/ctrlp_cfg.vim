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

let g:ctrlp_map = "<c-q>"

"let g:ctrlp_clear_cache_on_exit = 1
"let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

" Single VCS, listing command does not list untracked files:
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
"let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']

" Multiple VCS's:
"let g:ctrlp_user_command = {
"      \ 'types': {
"      \ 1: ['.git', 'cd %s && git ls-files'],
"      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
"      \ },
"      \ 'fallback': 'find %s -type f'
"      \ }

"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"\ }

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ }

"let g:ctrlp_custom_ignore = {
"  \ 'file': '\v(\.cpp|\.h|\.hh|\.cxx)@<!$'
"\ }

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

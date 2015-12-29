*troy-quickref*          Quick Reference for items I might forget about. 

------------------------------------------------------------------------------
General Usage Shortcuts                                          *general-ref*

General Vim help - 

<C-W>o - Make the current window the Only one.
gf     - open the file at the path the cursor is located on.
gq     - reflow slected text according to text width, or <movement> text.

Look up any command shortcut with built in help:
:help index   

------------------------------------------------------------------------------
General Usage Plugin Shortcuts                                    *plugin-ref*

From unimpaired this useful shortcut:

yo  - Enter insert mode with Paste enabled, but auto leave paste mode when
      insert mode is exited.

]a, [a: :next, :prev 

------------------------------------------------------------------------------
DEVELOPMENT TOOLS Reference                                           *dev-ref* 

To override templates: Look for source versions in
~/.vim/modules/{05_mu-template,07_lh-cpp}/after/template, copy to
~/.vim/template/, and modify to suit.

:MuTemplate <tab> -  Will provide a list of options.

In templates and snippets you will see "«»" characters, sometimes enclosing
information text. These are markers and can be jumped to with the key combo
<M-delete> or <C-J> but as this is the "Alt" key that doesn't really work in
terminal vim or is mapped (<C-j>) is mapped to something more useful like
moving windows around, I've remapped to <C-G>.


Some interesting utilities:
:BLINES <name>
:MGROUP <name>
:CLASS <name>  (Really simple, use :MuTemplate cpp/class instead for a wizard.)

:BLINER <name> (when you have lines selected, or use ;br)

Useful functions:
Various snippets for control structures (if/while/else, etc) automatically get
expanded.  But also some additional features:

Highlight text in visual mode, then you can:

,if   : Put the selected text in the if body, with cursor in condition.
,0    : Comment out the selected text with #if 0/#endif
Any of - (,\[,{,"": Surround the selected text with the given character pair.

Also when delimiters are opened (such as (, [, " ), the closing version is
automatically inserted.  If you want to toggle this behavior , <F9> can be
used.

Some references:
|lh-cpp-readme|

------------------------------------------------------------------------------
Scripting/Plugin References                                       *script-ref*

From scriptease, use ':Verbose <cmd>' to edit the :verbose output of any
command in the preview window.

For instance:
:Verbose map
:Verbose vmap
:Verbose scriptnames

------------------------------------------------------------------------------
vim:ts=8:sw=4:tw=78:fo=tcq2:isk=!-~,^*,^\|,^\":ft=help:

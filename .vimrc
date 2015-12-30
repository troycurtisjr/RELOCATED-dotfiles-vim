
let g:pathogen_disabled=[ 'nerdtree' ]

execute pathogen#infect('versions/all/{}')

" Now source the version specific modules.
execute pathogen#infect('versions/'.v:version."/{}")

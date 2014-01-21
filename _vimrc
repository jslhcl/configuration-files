" for the plugin pathogen
"filetype off
"call pathogen#runtime_append_all_bundles()
"filetype plugin on

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

set nobackup
set smartindent
set number
set fileencodings=ucs-bom,utf-8,cp936,gb18030,iso-8859-1
" colorscheme murphy

set ic	"set ignore case
iab @d //debug
iab @e //enddebug

" support the syntax of actionscript
au BufWinEnter *.as setf actionscript

"set encoding=utf-8
"set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"	set fileencoding=chinese
"else
"	set fileencoding=utf-8
"endif

"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"language messages zh_CN.utf-8
" 测试中文

" filetype plugin on

" for ctags.exe
set tags=tags;
set autochdir

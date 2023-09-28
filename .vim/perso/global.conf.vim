" Completion


set wildmenu
set wildmode=list:longest

" default view
if has('mouse')
    set mouse=a
endif

set nocompatible
set nu
set rnu

syntax enable

set colorcolumn=80
set tabstop=4

" Current Line
set cursorline
set ignorecase

" General
set incsearch
set encoding=utf8

" AutoIndent
set ai " Auto Indent
set si " Smart Indent
set wrap

:set listchars=eol:↲,tab:»\ ,space:·,trail:·,extends:>,precedes:<
:set list

" packloadall
" silent! helptags ALL

" Install Plugin

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/pathogen.vim'
Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/utl.vim'
Plug 'vim-scripts/repeat.vim'
Plug 'vim-scripts/repeat.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/Tagbar'
Plug 'vim-scripts/speeddating.vim'
Plug 'vim-scripts/NrrwRgn'
Plug 'mattn/calendar-vim'
Plug 'vim-scripts/SyntaxRange'

Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdcommenter'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

call plug#end()


" Configure plugins

" Theme
set background=dark
colorscheme gruvbox

" Enable indent color

" hi IndentGuidesOdd  ctermbg=234
" hi IndentGuidesEven ctermbg=235

let g:indent_guides_enable_on_vim_startup=1

" "Disable automatic color
" let g:indent_guides_auto_colors=0

" "Size and the level of start for show guide
let g:indent_guides_guides_size=1
let g:indent_guides_guides_start_level=1

" NerdCommenter
filetype plugin on

" NerdTREE
autocmd VimEnter * NERDTree | wincmd p

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

autocmd BufWinEnter * silent NERDTreeMirror

" Completion

let g:coc_global_extensions = [ 'coc-tsserver' ]
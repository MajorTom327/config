" Keymap

" HexEdit Enable
noremap     <C-x>       :%! xxd<CR>
inoremap    <C-x>       <Esc>:%! xxd<CR>i

" HexEdit Disable
noremap     <C-S-x>       :%! xxd -r<CR>
inoremap    <C-S-x>       <Esc>:%! xxd -r<CR>i

" Duplicate line
noremap     <C-d>       yyp
inoremap    <C-d>       <Esc>yypi

" Create tab
noremap     <C-S-t>     :tabe<CR>
inoremap    <C-S-t>     <Esc>:tabe<CR>i

" Next Tab
noremap     <C-Tab>     :tabnext<CR>
inoremap    <C-Tab>     <Esc>:tabnext<CR>i

" Last Tab
noremap     <C-S-Tab>     :tablast<CR>
inoremap    <C-S-Tab>     <Esc>:tablast<CR>i

noremap     <C-p>         :CtrlP .<CR>
inoremap    <C-p>         <Esc>:CtrlP .<CR>

" Saving and other
nnoremap <C-e> <C-w> " Remap switch split to CTRL+E

noremap     <C-w>         :q<CR>
inoremap    <C-w>         <Esc>:q<CR>

noremap     <C-s>         :w<CR>
inoremap    <C-s>         <Esc>:w<CR>i

noremap     <C-S-s>       :w !sudo tee %<CR>
inoremap    <C-S-s>       <Esc>:w !sudo tee %<CR>i
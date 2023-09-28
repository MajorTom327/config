function! s:insert_gates()
	let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef " . gatename
	execute "normal! o# define " . gatename
	execute "normal! Go#endif"
	normal! kk
endfunction

autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal! g`\"" |
	\ endif""""")""'")""'")


command Hex :%! xxd
command HexR :%! xxd -r
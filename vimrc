if filereadable(expand("~/.vim/perso/global.conf.vim"))
    source ~/.vim/perso/global.conf.vim
endif

if filereadable(expand("~/.vim/perso/plugins.conf.vim"))
    source ~/.vim/perso/plugins.conf.vim
endif

if filereadable(expand("~/.vim/perso/keymap.conf.vim"))
    source ~/.vim/perso/keymap.conf.vim
endif

if filereadable(expand("~/.vim/perso/functions.conf.vim"))
    source ~/.vim/perso/functions.conf.vim
endif


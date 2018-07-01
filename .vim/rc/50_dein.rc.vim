if &compatible
    set nocompatible
endif

let s:dein_dir = expand('$CACHE/dein')

if !dein#load_state(s:dein_dir)
    finish
endif

call dein#begin(s:dein_dir)

call dein#load_toml('$HOME/.vim/toml/dein.toml', {'lazy': 0})
call dein#load_toml('$HOME/.vim/toml/dein_lazy.toml', {'lazy': 1})
call dein#load_toml('$HOME/.vim/toml/dein_neo.toml', {'lazy': 1})
call dein#load_toml('$HOME/.vim/toml/dein_python.toml', {'lazy': 1})
call dein#load_toml('$HOME/.vim/toml/dein_frontend.toml', {'lazy': 1})

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
    call dein#install()
endif

" Injecting VAM
source ~/vam-setup.vim

let plugins = []
call add(plugins, "github:klen/python-mode")
call add(plugins, "github:scrooloose/nerdtree")
call add(plugins, "github:scrooloose/nerdcommenter")
call add(plugins, "Conque_Shell")
call add(plugins, "pyunit%3258")
call add(plugins, "rest")
call add(plugins, "fugitive")
call add(plugins, "bufexplorer.zip")
call add(plugins, "grep")
call add(plugins, "desert256")

call Setup(plugins)

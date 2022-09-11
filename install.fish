#!/usr/local/bin/fish

set os $(uname)

echo "[nvim] Symlinking config"
if [ "$os" = "Darwin" ]
	set fullpath $(greadlink -f nvim/init.lua)
	ln -sf "$fullpath" $XDG_CONFIG_HOME/nvim/init.lua
else
	set fullpath $(readlink -f nvim/init.lua)
	ln -sf $fullpath $XDG_CONFIG_HOME/nvim/init.lua
end

echo "[bash] Symlinking config"
if [ "$os" = "Darwin" ]
	set fullpath $(greadlink -f bash/bashrc)
	ln -sf "$fullpath" $XDG_CONFIG_HOME/bash/bashrc
else
	set fullpath $(readlink -f bash/bashrc)
	ln -sf $fullpath $XDG_CONFIG_HOME/bash/bashrc
end



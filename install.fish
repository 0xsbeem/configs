#!/usr/local/bin/fish

set os $(uname)

echo "[nvim] Symlinking config"
if [ "$os" = "Darwin" ]
	set fullpath $(greadlink -f nvim/init.lua)
	ln -sf "$fullpath" $HOME/nvim/init.lua
else
	set fullpath $(readlink -f nvim/init.lua)
	ln -sf $fullpath $HOME/nvim/init.lua
end


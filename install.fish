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

echo "[t] Checking if t is installed"
which t 2&> /dev/null
if [ $status -eq 0 ]
  echo "installed"
else
  echo "Need to install t. This may prompt you for your sudo password."
  mkdir --parents ~/.local/t 
  hg clone https://hg.stevelosh.com/t ~/.local/t
  sudo ln -sf ~/.local/t/t.py /usr/local/bin/t
end


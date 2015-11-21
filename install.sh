#!/usr/bin/env fish
set -l dest $HOME/.local/bin
if [ ! -d $dest ]
	mkdir -pv $dest
end

for i in (find -maxdepth 1 -type f -executable ! -iname "install.sh" -printf "%f\n")
	command cp -fv "$i" "$dest/$i"
end

for i in (find -maxdepth 1 -type d -executable ! -name ".*" -printf "%f\n")
    mkdir -pv "$dest/$i"
	command cp -frv "$i" "$dest"
end

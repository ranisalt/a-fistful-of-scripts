#!/usr/bin/env fish
set -l dest ~/.local/bin
if [ -d $dest ]
	mkdir -p $dest
end

for i in (find -maxdepth 1 -type f -executable ! -iname "install.sh" -printf "%f\n")
	cp -fv "$i" "$dest/$i"
end

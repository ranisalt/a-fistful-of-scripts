#!/usr/bin/env fish
set -l dest ~/.local/bin
set -l pwd (pwd)
if test -d $dest
	mkdir -p $dest
end

for i in (find -maxdepth 1 -type f -executable ! -iname "install.sh" -printf "%f\n")
	ln -sfv "$pwd/$i" "$dest/$i"
end

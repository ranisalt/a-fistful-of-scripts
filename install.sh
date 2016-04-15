#!/usr/bin/env sh
DESTDIR=$HOME/.local/bin
if [ ! -d $DESTDIR ]; then
    mkdir -pv $DESTDIR
fi

for i in *; do
	rsync -a "$i" "$DESTDIR/$i"
done

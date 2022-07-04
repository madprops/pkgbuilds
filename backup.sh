#!/usr/bin/env bash

rm -R backup
mkdir backup
mkdir backup/git
mkdir backup/bin

cd git 

for d in */ ; do
  mkdir ../backup/git/"$d"
  cp "$d"/PKGBUILD ../backup/git/$d/PKGBUILD
  cp "$d"/.gitignore ../backup/git/$d/gitignore_add_dot
  cp "$d"/push.sh ../backup/git/$d/push.sh
done

cd ../bin 

for d in */ ; do
  mkdir ../backup/bin/"$d"
  cp "$d"/PKGBUILD ../backup/bin/$d/PKGBUILD
  cp "$d"/.gitignore ../backup/bin/$d/gitignore_add_dot
  cp "$d"/push.sh ../backup/bin/$d/push.sh
done
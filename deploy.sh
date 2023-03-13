#!/usr/bin/env sh

echo "Are you sure? Have you committed your work? This will delete anything not committed!"
echo " "
read -p "y/n: " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  set -e
  git checkout --orphan gh-pages
  npm run build
  git --work-tree dist add --all
  git --work-tree dist commit -m 'Deploy'
  git push origin HEAD:gh-pages --force
  rm -r dist
  git checkout -f master
  git branch -D gh-pages
fi

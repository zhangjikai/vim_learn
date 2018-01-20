#!/bin/sh
git add .
git commit -m "update"
git push
cd /home/zhangjikai/文档/source_new/git-new/github/vim_learn
git checkout master
git pull
git checkout gh-pages
git pull
cd /home/zhangjikai/GitBook/Library/zhangjk/vim
gitbook build
yes | cp -rf /home/zhangjikai/GitBook/Library/zhangjk/vim/_book/* /home/zhangjikai/文档/source_new/git-new/github/vim_learn/
cd /home/zhangjikai/文档/source_new/git-new/github/vim_learn
git checkout gh-pages
git add -A .
git commit -m "update"
git push
git checkout master
rsync -av --exclude='_book' --exclude='.git' --exclude='node_modules' /home/zhangjikai/GitBook/Library/zhangjk/vim/ .
git add -A .
git commit -m "update"
git push

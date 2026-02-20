#!/bin/bash
git checkout 1dev
git add -A
git commit -m "eip"
git push

git checkout master_e
git merge 1dev
git push

git checkout prod_e
git merge master_e
git push

git diff HEAD master_e
git diff HEAD 1dev
git checkout 1dev

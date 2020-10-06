#!/bin/bash

git fetch upstream
git checkout master
git merge upstream/master
cat youtubelist.txt | sed 's/^/||/' | sed 's/$/^/' > youtubelist_adhome.txt
git add .
git commit -m "$(date)"
git pm


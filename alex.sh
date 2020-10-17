#!/bin/bash

cd /root/youTube_ads_4_pi-hole
git fetch upstream
git checkout master
git merge upstream/master -m "merge $(date +%y%m%d)"
git co -3
cat youtubelist.txt | sed 's/^/||/' | sed 's/$/^/' > youtubelist_adhome.txt
git add .
git commit -m "$(date +%y%m%d)"
git pm


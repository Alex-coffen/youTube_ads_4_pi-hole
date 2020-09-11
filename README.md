
cat youtubelist.txt | sed 's/^/||/' | sed 's/$/^/' > youtubelist_adhome.txt

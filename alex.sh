#!/bin/bash

cd /root/youTube_ads_4_pi-hole

wget https://raw.githubusercontent.com/kboghdady/youTube_ads_4_pi-hole/master/youtubelist.txt

mv youtubelist.txt.1 youtubelist.txt

sed -i '/====/d' youtubelist.txt
sed -i '/<<<</d' youtubelist.txt
sed -i '/>>>>/d' youtubelist.txt

grep "====" youtubelist.txt > /dev/null
if [ $? -eq 0 ]
then
    serverchan_sckey=SCU96616T738a8f2725c234321150d770e59f4b4f5eb1771b3a04f

    title="youtubeAD%e8%87%aa%e5%8a%a8merge%e5%a4%b1%e8%b4%a5"
    /usr/bin/curl -s "http://sc.ftqq.com/$serverchan_sckey.send?text=${title}" -d "&desp=youtubeAD%e8%87%aa%e5%8a%a8merge%e5%a4%b1%e8%b4%a5"
    exit 1
fi

cat youtubelist.txt | sed 's/^/||/' | sed 's/$/^/' > youtubelist_adhome.txt
git add .
git commit -m "$(date +%y%m%d)"
git pm


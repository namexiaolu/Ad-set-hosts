# 推送到Git
sed -i -e "1i \# `date '+%Y-%m-%d %T'`" /sdcard/ADM/Github/Ad-set-hosts/hosts
git add /sdcard/ADM/Github/Ad-set-hosts/* && git commit -m " `date '+%Y-%m-%d %T'` add my ad hosts " && git push && echo -e " `date '+%Y-%m-%d %T' ` push成功"

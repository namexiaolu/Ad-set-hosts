#!/bin/bash

# pull云端到本地
git pull origin master

# 下载去广告hosts合并并去重

t=/sdcard/ADM/Github/Ad-set-hosts/hosts.txt
f=/sdcard/ADM/Github/Ad-set-hosts/hosts

curl -s https://gitee.com/qiusunshine233/hikerView/raw/master/ad_v1.txt > $t

sed -i 's/\&\&/\n/g' $t

curl -s https://gitee.com/qiusunshine233/hikerView/raw/master/ad_v2.txt >> $t

sed -i '/\(\/\|@\|\*\|^\.\|\:\)/d;s/^/127.0.0.1 /g' $t && echo "海阔影视hosts导入成功"

while read i;do curl -s "$i">>$t&&echo "下载成功"||echo "下载失败";done<<EOF
https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts
https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts
https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts
https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts
https://hosts.nfz.moe/127.0.0.1/full/hosts
https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/xiaobeita/hosts
https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts
https://raw.githubusercontent.com/ilpl/ad-hosts/master/hosts
EOF

# 保留必要host
sed -i '/tencent/d;/^\(127\|0\|::\)/!d;s/0.0.0.0/127.0.0.1/g;/ip6-/d;/localhost/d;s/#.*//g;s/\s\{2,\}//g' $t

# 更新hosts
(echo -e "# `date '+%Y-%m-%d %T'`\n# 小贝塔自用，请勿商用\n\n127.0.0.1 localhost\n::1 localhost\n" && sort -u $t) >$f&&echo "更新hosts成功"||echo "更新hosts失败..."

# 复制hosts到手机系统
su -c 'mount -o rw,remount /system&&cp -f /sdcard/ADM/Github/Ad-set-hosts/hosts /system/etc/hosts&&mount -o ro,remount /system&&rm /sdcard/ADM/Github/Ad-set-hosts/hosts.txt&&echo "操作成功..."||echo "操作失败..."'

# 推送到GitHub
git add /sdcard/ADM/Github/Ad-set-hosts/* && git commit -m " `date '+%Y-%m-%d %T'` " && git push -u origin master && echo -e " `date '+%Y-%m-%d %T' ` 更新hosts成功"||echo "更新hosts失败..."

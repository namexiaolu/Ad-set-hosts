
# 基础版2357

su -c t=/sdcard/host.tmp&&for i in https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://hosts.nfz.moe/basic/hosts https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts ;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` \n# Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/#/d;/^$/d;/^f/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/sdcard/ADM/Github/Ad-set-hosts/basic/hosts&&echo "操作成功..."||echo "操作失败..."


# 完整版1234678

su -c t=/sdcard/host.tmp&&for i in https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts https://hosts.nfz.moe/full/hosts https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts ;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` \n# Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/#/d;/^$/d;/^f/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/sdcard/ADM/Github/Ad-set-hosts/full/hosts&&echo "操作成功..."||echo "操作失败..."


# 基础音乐版23579

su -c t=/sdcard/host.tmp&&for i in https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://hosts.nfz.moe/basic/hosts https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/NetEase/hosts ;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` \n# Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/sdcard/ADM/Github/Ad-set-hosts/basic-music/hosts&&echo "操作成功..."||echo "操作失败..."


# 完整音乐版12346789

su -c t=/sdcard/host.tmp&&for i in https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts https://hosts.nfz.moe/full/hosts https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/NetEase/hosts ;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` \n# Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/#/d;/^$/d;/^f/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/sdcard/ADM/Github/Ad-set-hosts/full-music/hosts&&echo "操作成功..."||echo "操作失败..."

# 推送到GitHub
git add /sdcard/ADM/Github/Ad-set-hosts/* && git commit -m "`date '+%Y-%m-%d %T'`" && git push -u origin master && echo "`date '+%Y-%m-%d %T'`更新hosts成功"

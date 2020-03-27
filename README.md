# Ad-set-hosts

## 0. 简介

- 本项目集合多个去广告`hosts`并去重，并且添加安卓端网易云音乐特权听歌`hosts`。
- `hosts`分为四版，基础版、完整版、基础音乐版、完整音乐版。

## 1. 本hosts特点

1. 集合多个去广告hosts
2. 去除重复规则
3. 127.0.0.1，兼容性高
4. 可增加安卓端网易云音乐特权听歌

## 2. 使用方法

- 下载所需hosts来替换系统hosts，需要root权限

- 安卓`hosts`文件位置：`/system/etc/hosts`

基础版：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/basic/hosts   
完整版：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/full/hosts   
基础音乐版：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/basic-music/hosts   
完整音乐版：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/full-music/hosts   

其中：基础版（12358）完整版（1-9）

## 3. 引用的`hosts`源

1. 依然的爱：https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts   
2. yhosts：https://raw.githubusercontent.com/vokins/yhosts/master/hosts   
3. 大圣净化：https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts   
4. 1024_hosts：https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts   
5. neoHosts基础版：https://hosts.nfz.moe/basic/hosts   
6. neoHosts完整版：https://hosts.nfz.moe/full/hosts   
7. 小贝塔维护hosts：https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts   
8. StevenBlack：https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts   
9. 网易云音乐hosts：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/NetEase/hosts   

注：1-6为国内开发者维护的规则，8为国外开发者维护的规则，9为`https://wy.ydlrqx.com/proxy.pac `提取得来

## 4. 原理简介

- 本项目以酷安@WQY916提供的脚本为蓝本，我整理`hosts`源来生成最终`hosts`

- 脚本如下，此脚本在安卓机以root权限运行，运行结果是将 hosts1 hosts2 hosts3 三个hosts源合并去重并127兼容来替换系统`hosts`

```bash
t=/sdcard/host.tmp;mount -o rw,remount /system&&for i in hosts1 hosts2 hosts3 ;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` \n# Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/system/etc/hosts&&mount -o ro,remount /system&&echo "操作成功..."||echo "操作失败..."
```

## 5. 具体代码

- 基础版235
```
t=/sdcard/host.tmp;mount -o rw,remount /system&&for i in https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://hosts.nfz.moe/basic/hosts;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` # Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/system/etc/hosts&&mount -o ro,remount /system&&echo "操作成功..."||echo "操作失败..."
```

- 完整版1234678
```
t=/sdcard/host.tmp;mount -o rw,remount /system&&for i in https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts https://hosts.nfz.moe/full/hosts https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` # Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/system/etc/hosts&&mount -o ro,remount /system&&echo "操作成功..."||echo "操作失败..."
```

- 基础音乐版2359
```
t=/sdcard/host.tmp;mount -o rw,remount /system&&for i in https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://hosts.nfz.moe/basic/hosts hosts：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/NetEase/hosts;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` # Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/system/etc/hosts&&mount -o ro,remount /system&&echo "操作成功..."||echo "操作失败..."
```

- 完整音乐版12346789
```
t=/sdcard/host.tmp;mount -o rw,remount /system&&for i in https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts https://raw.githubusercontent.com/vokins/yhosts/master/hosts https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts https://hosts.nfz.moe/full/hosts https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita/hosts https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts hosts：https://raw.githubusercontent.com/rentianyu/Ad-set-hosts/master/NetEase/hosts;do curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` # Script by WQY916\n# Made by xiaobeita\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/system/etc/hosts&&mount -o ro,remount /system&&echo "操作成功..."||echo "操作失败..."
```


# ad-set-hosts   
## 0. 简介

- 本项目集合多个去广告hosts并去重，并且添加网易云音乐特权听歌hosts。
- hosts 分为四版，基础版、完整版、基础音乐版、完整音乐版。

## 1. 本hosts特点

1. 集合多个去广告hosts
2. 去重
3. 127.0.0.1，兼容性高

## 2. 使用方法下载所需hosts替换系统hosts

基础版：
完整版：
基础音乐版：
完整音乐版：

## 2. 原理简介

- 本项目以酷安@WQY916提供的脚本为蓝本，我整理hosts源来生成最终hosts。

- 脚本如下，此脚本在安卓机以root权限运行，运行结果是将 hosts1 hosts2 hosts3 三个hosts源合并去重并127兼容并替换系统hosts。

```bash
t=/sdcard/host.tmp;mount -o rw,remount /system&&for i in hosts1 hosts2 hosts3 curl -s "$i";echo "# $i" >>$t.tmp;done>$t&&((500<`wc -l < $t`))&&(echo -e "# `date '+%Y-%m-%d %T'` by WQY916\n# This file is generated from the following sources:";cat $t.tmp;echo "\n127.0.0.1 localhost\n::1 localhost\n\n";sed '/localhost/d;/^#/d;/^$/d;s/\r//g;s/\t/ /g;s/0.0.0.0/127.0.0.1/' $t|sort -u;rm $t $t.tmp)>/system/etc/hosts&&mount -o ro,remount /system&&echo "操作成功..."||echo "操作失败..."
```

## 3. 引用的hosts源

1. 依然的爱：https://raw.githubusercontent.com/E7KMbb/AD-hosts/master/system/etc/hosts   
2. yhosts：https://raw.githubusercontent.com/vokins/yhosts/master/hosts   
3. 大圣净化：https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts   
4. 1024_hosts：https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts   
5. neoHosts基础版：https://hosts.nfz.moe/basic/hosts   
6. neoHosts完整版：https://hosts.nfz.moe/full/hosts   
7. 小贝塔维护hosts：https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/xiaobeita-hosts  
9. Hblock：https://hblock.molinero.dev/hosts   
8. StevenBlack：https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts   
10. 网易云音乐hosts：https://raw.githubusercontent.com/rentianyu/ad-set-hosts/master/NetEase-hosts   
#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information. 
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# add ssr packages to feeds
mkdir package/base-files/files/config
echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default

# add passwall packages to feeds
echo "src-git lienol2 https://github.com/Lienol/openwrt-package" >> feeds.conf.default
#echo "src-git passwall_trojango https://github.com/goer99/xiaorouji-openwrt-passwall" >> feeds.conf.default
#echo "src-git laohu https://github.com/huchanghui123/Lienol-openwrt-packages-backup" >> feeds.conf.default
#echo "src-git trojan_go https://github.com/frainzy1477/luci-app-trojan.git" >> feeds.conf.default
#echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
#echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default

./scripts/feeds update -a && ./scripts/feeds install -a

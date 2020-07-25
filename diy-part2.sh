#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 将build日期写入GRUB TITLE
cat >> .config <<EOF
#CONFIG_KERNEL_BUILD_DOMAIN="Tom on $(date)"
#CONFIG_KERNEL_BUILD_USER="Tom on $(date)"
CONFIG_GRUB_TITLE="Lean OpenWrt AutoBuild by Tom on $(date)"
EOF

# 更改默认ip
# sed -i 's/192.168.1.1/新的ip/g' package/base-files/files/bin/config_generate

# 更改主机名
#sed -i "s/OpenWrt/新主机名/g" package/base-files/files/bin/config_generate

# 更改版本号
sed -i "s/OpenWrt/Tom build on $(date -I) for /g" package/lean/default-settings/files/zzz-default-settings

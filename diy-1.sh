# DIY-1 此脚本功能：添加外部插件

# 添加 ShadowSocksR Plus+ 插件
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 添加 OpenClash 插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 添加 PassWall 插件
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

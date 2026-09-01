#!/bin/bash
# 下载最新版 smartdns
git clone --depth=1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/smartdns.git package/smartdns

# 下载最新版 passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 下载 passwall 依赖包
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall_packages

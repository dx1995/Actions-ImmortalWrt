#!/bin/bash

# 下载 passwall LuCI 界面（只下载界面，后端用 ImmortalWrt feeds 自带的）
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 不下载 passwall_packages，所有后端包（xray-core、v2ray-core 等）都用 ImmortalWrt feeds 自带的
# 避免版本不兼容导致编译失败

# smartdns 用 ImmortalWrt 自带 feeds 版本
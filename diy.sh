#!/bin/bash

# 下载 passwall LuCI 界面
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 下载 passwall 依赖包（后端）
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall_packages

# smartdns 用 ImmortalWrt 自带 feeds 版本（最新版需要 Rust，21.02 不支持）

# 删除 passwall_packages 里不兼容 21.02 的后端包，只用 feeds 里自带的 xray-core
rm -rf package/passwall_packages/shadowsocks-rust
rm -rf package/passwall_packages/shadow-tls
rm -rf package/passwall_packages/shadowsocksr-libev
rm -rf package/passwall_packages/xray-core
rm -rf package/passwall_packages/v2ray-core
rm -rf package/passwall_packages/v2ray-plugin
rm -rf package/passwall_packages/trojan
rm -rf package/passwall_packages/trojan-go
rm -rf package/passwall_packages/naiveproxy
rm -rf package/passwall_packages/hysteria
rm -rf package/passwall_packages/brook
rm -rf package/passwall_packages/kcptun
rm -rf package/passwall_packages/sing-box
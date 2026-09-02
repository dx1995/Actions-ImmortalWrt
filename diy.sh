#!/bin/bash

# 下载最新版 passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# 下载 passwall 依赖包
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall_packages

# smartdns 使用 ImmortalWrt 自带 feeds 版本，不从 GitHub 拉最新版（最新版需要 Rust 编译器，21.02 不支持）

# 删除需要 Rust 的包目录，避免编译报错
rm -rf package/passwall_packages/shadowsocks-rust
rm -rf package/passwall_packages/shadow-tls

# 删除 passwall_packages 里的 xray-core（版本太新，需要 Go 1.23+，21.02 自带的 Go 版本太旧）
# 改用 ImmortalWrt feeds 自带的 xray-core
rm -rf package/passwall_packages/xray-core
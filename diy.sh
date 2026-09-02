#!/bin/bash

# 所有软件包都使用 ImmortalWrt 官方 feeds 自带的版本
# passwall、smartdns、xray-core 全部在 feeds 里，无需从 GitHub 拉取
# 确保版本兼容，编译稳定

# 预留位置，如果需要添加自定义包可以在这里 git clone
echo "Using ImmortalWrt official feeds for all packages"
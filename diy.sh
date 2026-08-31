#!/bin/bash
git clone --depth=1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# 修改PSG1218A分区表，从8MB扩展到16MB
sed -i 's/reg = <0x50000 0x7b0000>/reg = <0x50000 0xfb0000>/' target/linux/ramips/dts/mt7620a_phicomm_psg1218.dtsi

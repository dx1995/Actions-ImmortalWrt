#!/bin/bash
git clone --depth=1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# 修改PSG1208分区表，从8MB扩展到16MB
sed -i 's/0x050000 0x7b0000/0x050000 0xfb0000/' target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
# 同时修改IMAGE_SIZE
sed -i 's/IMAGE_SIZE := 7872k/IMAGE_SIZE := 16000k/' target/linux/ramips/image/mt7620.mk

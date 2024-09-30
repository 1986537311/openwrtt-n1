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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i s/"libpcre"/"libpcre2"/ package/feeds/telephony/freeswitch/Makefile
sed -i s/'default LIBCURL_WOLFSSL'/'default LIBCURL_OPENSSL'/ feeds/packages/net/curl/Config.in
rm -rf feeds/packages/net/v2raya
rm -rf feeds/packages/net/trojan-go
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/lang/golang
mv package/lean/golang feeds/packages/lang

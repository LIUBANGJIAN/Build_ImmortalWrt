#!/bin/bash
# =========================================================================
# diy-part2.sh: 在配置加载前执行，用于修改软件源、默认IP与时区
# =========================================================================

# 1. 替换官方源为【北京大学开源镜像站】，大幅提升国内下载与编译速度
if [ -d "package/base-files/files/etc/apk/repositories.d" ]; then
    sed -i 's,https://downloads.immortalwrt.org,https://mirrors.pku.edu.cn/immortalwrt,g' package/base-files/files/etc/apk/repositories.d/*.list
fi

# 2. 修改默认 LAN 口 IP 地址为 192.168.10.1
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 3. 修改系统默认主机名为 MyRouter
sed -i 's/ImmortalWrt/MyRouter/g' package/base-files/files/bin/config_generate

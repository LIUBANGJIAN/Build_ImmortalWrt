#!/bin/bash
# =========================================================================
# diy-part1.sh: 专门用于集中管理和注入所有的第三方软件源 (Feeds)
# =========================================================================

# 使用 sed 往 feeds.conf.default 顶部依次安全插入第三方源
sed -i '1i src-git lucky https://github.com/gdy666/luci-app-lucky' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '3i src-git openlist2 https://github.com/sbwml/luci-app-openlist2' feeds.conf.default
sed -i '4i src-git vmware https://github.com/vmware/open-vm-tools' feeds.conf.default
sed -i '5i src-git taskplan https://github.com/sirpdboy/luci-app-taskplan' feeds.conf.default
sed -i '6i src-git rtp2httpd https://github.com/stackia/rtp2httpd.git' feeds.conf.default
sed -i '7i src-git netbird https://github.com/tbc0309/openwrt-netbird.git' feeds.conf.default

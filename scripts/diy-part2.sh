#!/bin/bash
# 采用安全判断，防止部分版本因路径微调而导致整个编译中断
if [ -d "package/base-files/files/etc/apk/repositories.d" ]; then
    sed -i 's,https://downloads.immortalwrt.org,https://mirrors.pku.edu.cn/immortalwrt,g' package/base-files/files/etc/apk/repositories.d/*.list
fi

if [ -f "package/base-files/files/bin/config_generate" ]; then
    sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
    sed -i 's/ImmortalWrt/MyRouter/g' package/base-files/files/bin/config_generate
else
    echo "提示: 未直接找到 config_generate 文件，尝试通过全局查找替换..."
    find package/ -name "config_generate" -exec sed -i 's/192.168.1.1/192.168.10.1/g' {} \;
    find package/ -name "config_generate" -exec sed -i 's/ImmortalWrt/MyRouter/g' {} \;
fi

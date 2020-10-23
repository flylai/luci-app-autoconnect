# 自动连接校园网 (桂林理工大学)

# 编译
把项目 clone 到 openwrt 源码目录下的 package 目录下
执行
```bash
make menuconfig
```

找到 luci-app-autoconnect 选为 `M`(单独编译), 或者为 `*` (编译入固件)。

```bash
# 单独编译
make package/luci-app-autoconnect/compile V=99
```

寻找编译出来的 ipk 文件安装即可。

# 使用
看一眼就会用了, 每天早上 **7 点 10 分** 会自动启动定时脚本连接校园网
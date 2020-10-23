include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-autoconnect
PKG_VERSION:=1.0
PKG_RELEASE:=1
LUCI_TITLE:=LuCI support for AutoConnect(GLUT)
LUCI_DEPENDS:=+busybox +curl
LUCI_PKGARCH:=all

PKG_MAINTAINER:=flylai

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
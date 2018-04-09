include $(TOPDIR)/rules.mk

PKG_NAME:=hello
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/hello
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=hello
	MAINTAINER:="zheng"
	PKGARCH:=all
endef

define Package/hello/description
	hello world!
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Configure
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CC)" \
		CFLAGS="$(TARGET_CFLAGS) -Wall" \
		LDFLAGS="$(TARGET_LDFLAGS)"
endef

define Package/hello/install
	$(INSTALL_DIR) $(1)/usr/sbin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,hello))

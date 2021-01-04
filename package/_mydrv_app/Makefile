include $(TOPDIR)/rules.mk

PKG_NAME:=mydrv_app
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/mydrv_app
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=mydrv_app
	MAINTAINER:="zheng"
	PKGARCH:=all
endef

define Package/mydrv_app/description
	mydrv world!
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

define Package/mydrv_app/install
	$(INSTALL_DIR) $(1)/usr/sbin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mydrv_app $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,mydrv_app))

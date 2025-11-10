################################################################################
# lg (liblgpio C library)
################################################################################

LG_SITE_METHOD = git
LG_SITE = https://github.com/joan2937/lg.git
LG_VERSION = 746f0df43774175090b93abcc860b6733eefc09b

LG_LICENSE = Unlicense
LG_LICENSE_FILES = UNLICENSE

LG_DEPENDENCIES = host-pkgconf
LG_INSTALL_STAGING = YES

# Cross-compile flags for the Makefile
LG_MAKE_OPTS = \
	CC="$(TARGET_CC)" \
	AR="$(TARGET_AR)" \
	RANLIB="$(TARGET_RANLIB)" \
	CFLAGS="$(TARGET_CFLAGS) -fPIC" \
	LDFLAGS="$(TARGET_LDFLAGS)" \
	STRIP=:

define LG_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) $(LG_MAKE_OPTS)
endef


define LG_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 $(@D)/lgpio.h $(STAGING_DIR)/usr/include/lgpio.h
	[ -f $(@D)/rgpio.h ] && $(INSTALL) -D -m 0644 $(@D)/rgpio.h $(STAGING_DIR)/usr/include/rgpio.h || true
	mkdir -p $(STAGING_DIR)/usr/lib
	cp -dpf $(@D)/liblgpio.so* $(STAGING_DIR)/usr/lib/ 2>/dev/null || true
	[ -f $(@D)/librgpio.so ] && cp -dpf $(@D)/librgpio.so* $(STAGING_DIR)/usr/lib/ || true
endef

define LG_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/lib
	cp -dpf $(@D)/liblgpio.so* $(TARGET_DIR)/usr/lib/ 2>/dev/null || true
	[ -f $(@D)/librgpio.so ] && cp -dpf $(@D)/librgpio.so* $(TARGET_DIR)/usr/lib/ || true
endef

$(eval $(generic-package))

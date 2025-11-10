################################################################################
# python-lgpio
################################################################################

PYTHON_LGPIO_VERSION = 0.2.2.0
PYTHON_LGPIO_SOURCE = lgpio-$(PYTHON_LGPIO_VERSION).tar.gz
PYTHON_LGPIO_SITE = https://files.pythonhosted.org/packages/source/l/lgpio

PYTHON_LGPIO_LICENSE = Unlicense
PYTHON_LGPIO_LICENSE_FILES = UNLICENSE

PYTHON_LGPIO_SETUP_TYPE = setuptools

# Needs the C lib + headers
PYTHON_LGPIO_DEPENDENCIES = lg

# Make sure the extension build looks in STAGING for lgpio.h and liblgpio.so
PYTHON_LGPIO_ENV = \
	CFLAGS="$(TARGET_CFLAGS) -I$(STAGING_DIR)/usr/include" \
	LDFLAGS="$(TARGET_LDFLAGS) -L$(STAGING_DIR)/usr/lib"

$(eval $(python-package))

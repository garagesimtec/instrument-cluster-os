################################################################################
# python-blinkt
################################################################################

PYTHON_BLINKT_SITE_METHOD = git
PYTHON_BLINKT_SITE = https://github.com/pimoroni/blinkt.git
PYTHON_BLINKT_VERSION = 27a7dfcd267261a56860ed1f77af7318a31e5488
PYTHON_BLINKT_SUBDIR = library

PYTHON_BLINKT_LICENSE = MIT
PYTHON_BLINKT_LICENSE_FILES = LICENSE

PYTHON_BLINKT_SETUP_TYPE = setuptools

PYTHON_BLINKT_DEPENDENCIES = python-rpi-lgpio

$(eval $(python-package))

################################################################################
# python-rpi-lgpio
################################################################################

PYTHON_RPI_LGPIO_VERSION = 0.6
PYTHON_RPI_LGPIO_SOURCE = rpi_lgpio-$(PYTHON_RPI_LGPIO_VERSION).tar.gz
PYTHON_RPI_LGPIO_SITE = https://files.pythonhosted.org/packages/source/r/rpi-lgpio

PYTHON_RPI_LGPIO_LICENSE = BSD-3-Clause
PYTHON_RPI_LGPIO_LICENSE_FILES = LICENSE.txt

PYTHON_RPI_LGPIO_SETUP_TYPE = setuptools
PYTHON_RPI_LGPIO_DEPENDENCIES = python-lgpio

$(eval $(python-package))

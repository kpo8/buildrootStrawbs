################################################################################
#
# chromaprint
#
################################################################################

CHROMAPRINT_VERSION = 1.4.3
CHROMAPRINT_SOURCE =chromaprint-$(CHROMAPRINT_VERSION).tar.gz
CHROMAPRINT_SITE = https://github.com/acoustid/chromaprint/releases/download/v1.4.3
CHROMAPRINT_INSTALL_STAGING = YES
CHROMAPRINT_INSTALL_TARGET = YES
CHROMAPRINT_DEPENDENCIES = ffmpeg
CHROMAPRINT_LICENSE_FILES = COPYING

$(eval $(cmake-package))

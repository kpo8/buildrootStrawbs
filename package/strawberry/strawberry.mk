################################################################################
#
# strawberry
#
################################################################################

STRAWBERRY_VERSION = 0.5.2.53.g384209b
STRAWBERRY_SOURCE =strawberry-$(STRAWBERRY_VERSION).tar.xz
STRAWBERRY_SITE = https://builds.strawbs.net/source
STRAWBERRY_INSTALL_STAGING = YES
STRAWBERRY_INSTALL_TARGET = YES
STRAWBERRY_DEPENDENCIES = boost gettext libglib2 taglib qt5base protobuf sqlite qt5x11extras gstreamer1 openssl
STRAWBERRY_LICENSE_FILES = COPYING
#STRAWBERRY_CONF_OPTS= 

$(eval $(cmake-package))

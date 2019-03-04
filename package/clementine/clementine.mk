################################################################################
#
# clementine
#
################################################################################

CLEMENTINE_VERSION = 1.3.2rc1
CLEMENTINE_SOURCE = clementine-$(CLEMENTINE_VERSION).tar.xz
FEH_SITE = https://builds.clementine-player.org/source/$(CLEMENTINE_SOURCE)
CLEMENTINE_DEPENDENCIES = boost gettext libgstreamer libgstreamer-plugins-base  liblastfm libglib2.0 Qt4 tag;ib libfftw3 libchromaprint glew libqson libsqlite3 libprotobuf libchromaprint libqca2 libgio libspotify libpulse
CLEMENTINE_LICENSE_FILES = COPYING
$(eval $(cmake-package))

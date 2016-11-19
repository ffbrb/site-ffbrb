GLUON_SITE_PACKAGES := \
  gluon-mesh-batman-adv-15 \
  gluon-alfred \
  gluon-respondd \
  gluon-autoupdater \
  gluon-config-mode-autoupdater \
  gluon-config-mode-contact-info \
  gluon-config-mode-core \
  gluon-config-mode-geo-location \
  gluon-config-mode-hostname \
  gluon-config-mode-tunneldigger \
  gluon-ebtables-filter-multicast \
  gluon-ebtables-filter-ra-dhcp \
  gluon-ebtables-filter-roguenets \
  gluon-luci-theme \
  gluon-luci-admin \
  gluon-luci-autoupdater \
  gluon-luci-portconfig \
  gluon-luci-private-wifi \
  gluon-luci-wifi-config \
  gluon-next-node \
	gluon-mesh-vpn-tunneldigger \
	gluon-tunneldigger-watchdog \
  gluon-radvd \
  gluon-setup-mode \
  gluon-status-page \
  gluon-migrate-vpn \
  haveged \
  iptables \
  iwinfo

# Allow overriding the release number from the command line
GLUON_RELEASE ?= 2016.2.1~l2tp-$(GLUON_BRANCH)-$(shell date '+%Y%m%d')

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

GLUON_ATH10K_MESH ?= ibss

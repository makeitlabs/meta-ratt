FILESEXTRAPATHS_prepend := "${THISDIR}/systemd:"

# install a config file for wlan into the systemd networking directory

SRC_URI += " \
    file://wlan.network \
"

PACKAGECONFIG_append = " networkd"

do_install_append() {
    install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/network/
}

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://asound.conf"

do_install_append() {
    install -d ${D}${sysconfdir}
    install -m 0644 ${WORKDIR}/asound.conf ${D}${sysconfdir}/asound.conf
}

FILES_${PN} += " ${sysconfdir}/asound.conf"

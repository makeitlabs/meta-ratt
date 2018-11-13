SUMMARY = "Program to copy the Raspberry Pi display to a secondary framebuffer"
HOMEPAGE = "https://github.com/tangentaudio/raspi2fb"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

DEPENDS += "libbsd userland"

SRCREV = "669504f70b65ff3e96b5c9b9e7bd1d7f94623843"

FILESEXTRAPATHS_prepend := "${THISDIR}/raspi2fb:"

inherit pkgconfig systemd

SRC_URI = "\
    git://github.com/tangentaudio/raspi2fb \
    file://0001-Fix-cmake-paths-for-yocto-build.patch \
    file://raspi2fb.service \
"

PR = "r3"

S = "${WORKDIR}/git"

# enable service in systemd
SYSTEMD_SERVICE_${PN} = "raspi2fb.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"
FILES_${PN} += " ${systemd_unitdir}/system/raspi2fb.service"


inherit cmake

do_install_append () {
    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
       install -d ${D}/${systemd_unitdir}/system
       install -m 644 ${WORKDIR}/raspi2fb.service ${D}/${systemd_unitdir}/system
    fi

}

FILES_${PN} = "${bindir} ${sysconfdir}"

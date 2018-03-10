LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=c7471d0b951cf30fb6b9fa1fbfd55d12"

SRC_URI = ""

DEPENDS = "python-pyqt5"

APP_DIR = "${FILE_DIRNAME}/../../../app"

S = "${WORKDIR}/app"

FILES_${PN} += "${prefix}/ratt"

do_fetch() {
}

do_unpack() {
  echo "rsyncing source from ${APP_DIR} to ${WORKDIR}"
  /usr/bin/rsync -r ${APP_DIR} ${WORKDIR}
}

do_configure() {
}

do_compile() {
}

do_install() {
  mkdir -p ${D}${prefix}/ratt
  cp -r ${S}/. ${D}${prefix}/ratt
}

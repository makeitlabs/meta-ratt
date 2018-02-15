LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

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
  install -d ${D}${prefix}/ratt
  install -d ${D}${prefix}/ratt/audio
  install -d ${D}${prefix}/ratt/images
  install ${S}/*.py ${D}${prefix}/ratt
  install ${S}/*.qml ${D}${prefix}/ratt
  install ${S}/audio/*.wav ${D}${prefix}/ratt/audio
  install ${S}/images/*.png ${D}${prefix}/ratt/images
}

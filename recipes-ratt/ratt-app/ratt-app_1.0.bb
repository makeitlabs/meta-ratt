LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=c7471d0b951cf30fb6b9fa1fbfd55d12"

inherit pkgconfig systemd

DEPENDS = "python-pyqt5"

APP_DIR = "${FILE_DIRNAME}/../../../app"
S = "${WORKDIR}/app"


SRC_URI += "\
	file://ratt-app.service \
"

# enable service in systemd
SYSTEMD_SERVICE_${PN} = "ratt-app.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"

do_unpack() {
  echo "rsyncing source from ${APP_DIR} to ${WORKDIR}"
  /usr/bin/rsync -r ${APP_DIR} ${WORKDIR}
}

do_install() {
  mkdir -p ${D}${prefix}/ratt
  cp -r ${S}/. ${D}${prefix}/ratt

  install -d ${D}/data/ratt
  install -m 0644 ${S}/ratt-example.ini ${D}/data/ratt/ratt.ini

  if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
     install -d ${D}/${systemd_unitdir}/system

     # note: revisit this, particularly the ${THISDIR} -- is there some way to use the SRC_URI reference to the file?
     install -m 644 ${THISDIR}/ratt-app/ratt-app.service ${D}${systemd_unitdir}/system
  fi

}

FILES_${PN} += " ${systemd_unitdir}/system/ratt-app.service"
FILES_${PN} += " ${prefix}/ratt"
FILES_${PN} += " /data/ratt/ratt.ini"

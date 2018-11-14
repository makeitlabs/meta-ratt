FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://wpa_supplicant_wlan0.service \
	file://wpa_supplicant.conf-sane \
"

# replace systemd service with our own specific one for wlan0 only, and enable it
SYSTEMD_SERVICE_${PN} = "wpa_supplicant_wlan0.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"

FILES_${PN} += " /data/etc/wpa_supplicant.conf"

do_install_append() {
  # remove the original package services		    
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant-nl80211@.service
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant-wired@.service
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant.service
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant@.service

  # install our service
  install -m 644 ${WORKDIR}/wpa_supplicant_wlan0.service ${D}/${systemd_unitdir}/system

  # copy sane config template to data partition
  install -D ${WORKDIR}/wpa_supplicant.conf-sane ${D}/data/etc/wpa_supplicant.conf

  # make link from /etc/wpa_supplicant.conf to data partition
  ln -sf /data/etc/wpa_supplicant.conf ${D}${sysconfdir}/wpa_supplicant.conf

}
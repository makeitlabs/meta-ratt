FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://wpa_supplicant_wlan0.service \
"

# replace systemd service with our own specific one for wlan0 only, and enable it
SYSTEMD_SERVICE_${PN} = "wpa_supplicant_wlan0.service"
SYSTEMD_AUTO_ENABLE_${PN} = "enable"


do_install_append() {
  # remove the original package services		    
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant-nl80211@.service
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant-wired@.service
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant.service
  rm -f ${D}/${systemd_unitdir}/system/wpa_supplicant@.service

  # install our service

  install -m 644 ${WORKDIR}/wpa_supplicant_wlan0.service ${D}/${systemd_unitdir}/system

}
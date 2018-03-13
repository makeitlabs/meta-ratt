FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-alsa-params.patch;patch=1"

PACKAGECONFIG = "alsa"

PR = "6"

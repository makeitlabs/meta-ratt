SUMMARY = "MakeIt Labs RATT Platform"
HOMEPAGE = "http://www.makeitlabs.com"
LICENSE = "MIT"

require qt5-image.bb

PYTHON_EXTRAS = " \
    python-simplejson \
"

MQTT = " \
    python-paho-mqtt \
"

RATT_EXTRAS = " \
    dtc \
    alsa-utils \
    alsa-tools \
    wireless-tools \
    sudo \
    cifs-utils \
    dietsplash \
    tmux \
    espeak \
"

RATT_APP = " \
    ratt-app \
"

IMAGE_INSTALL += " \
    ${PYTHON_EXTRAS} \
    ${MQTT} \
    ${RATT_APP} \
    ${RATT_EXTRAS} \
"

QT5_PKGS += " \
    python-pyqt5 \
"

IMAGE_FEATURES_remove += " psplash"
IMAGE_FEATURES_remove += " package-management"
IMAGE_INSTALL_remove += " cups ffmpeg"
export IMAGE_BASENAME = "ratt-image"


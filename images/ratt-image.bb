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

IMAGE_INSTALL += " \
    ${PYTHON_EXTRAS} \
    ${MQTT} \
"


QT5_PKGS += " \
    python-pyqt5 \
"

export IMAGE_BASENAME = "ratt-image"

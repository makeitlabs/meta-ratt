SUMMARY = "A console development image with some C/C++ dev tools"
HOMEPAGE = "http://www.jumpnowtek.com"
LICENSE = "MIT"

IMAGE_FEATURES += "package-management splash"
IMAGE_LINGUAS = "en-us"

inherit image

DEPENDS += "bcm2835-bootfiles"

CORE_OS = " \
    kernel-modules \
    openssh openssh-keygen openssh-sftp-server \
    packagegroup-core-boot \
    term-prompt \
    tzdata \
    ntp \
    ntp-tickadj \
    coreutils \
"

WIFI_SUPPORT = " \
    crda \
    iw \
    linux-firmware-raspbian \
    wpa-supplicant \
"

PYTHON_SUPPORT = " \
    python \
    python-modules \
"

DEV_SDK_INSTALL = " \
    binutils \
    binutils-symlinks \
    cpp \
    cpp-symlinks \
    g++ \
    g++-symlinks \
    gcc \
    gcc-symlinks \
    gdb \
    gdbserver \
    gettext \
    ldd \
    libstdc++ \
    libstdc++-dev \
    libtool \
    make \
    pkgconfig \
    python3-modules \
"

DEV_EXTRAS = " \
    git \
    file \
    diffutils \
    serialecho  \
    spiloop \
    i2c-tools \
    devmem2 \
"

EXTRA_TOOLS_INSTALL = " \
    bzip2 \
    dosfstools \
    ethtool \
    fbset \
    findutils \
    iperf3 \
    iproute2 \
    iptables \
    htop \
    less \
    nano \
    netcat \
    procps \
    rndaddtoentcnt \
    rng-tools \
    sysfsutils \
    tcpdump \
    tmux \
    unzip \
    util-linux \
    wget \
    zile \
    zip \
"

RPI_STUFF = " \
    raspi2fb \
    userland \
"


IMAGE_INSTALL += " \
    ${CORE_OS} \
    ${PYTHON_SUPPORT} \
    ${DEV_EXTRAS} \
    ${EXTRA_TOOLS_INSTALL} \
    ${RPI_STUFF} \
    ${WIFI_SUPPORT} \
    ${DEV_SDK_INSTALL} \
"

set_local_timezone() {
    ln -sf /usr/share/zoneinfo/EST5EDT ${IMAGE_ROOTFS}/etc/localtime
}

disable_bootlogd() {
    echo BOOTLOGD_ENABLE=no > ${IMAGE_ROOTFS}/etc/default/bootlogd
}

ROOTFS_POSTPROCESS_COMMAND += " \
    set_local_timezone ; \
    disable_bootlogd ; \
 "

export IMAGE_BASENAME = "console-image"


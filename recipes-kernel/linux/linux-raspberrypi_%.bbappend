LINUX_VERSION = "4.14.79"

SRCREV = "36612d5d7a88672a3e7dd6cb458dbbbca0d75efe"

XX_RPI_KERNEL_DEVICETREE = " \
    bcm2708-rpi-0-w.dtb \
"

XX_RPI_KERNEL_DEVICETREE_OVERLAYS = " \
    overlays/adau1977-adc.dtbo \
    overlays/adau7002-simple.dtbo \
    overlays/ads1015.dtbo \
    overlays/ads1115.dtbo \
    overlays/ads7846.dtbo \
    overlays/adv7282m.dtbo \
    overlays/adv728x-m.dtbo \
    overlays/akkordion-iqdacplus.dtbo \
    overlays/allo-boss-dac-pcm512x-audio.dtbo \
    overlays/allo-digione.dtbo \
    overlays/allo-katana-dac-audio.dtbo \
    overlays/allo-piano-dac-pcm512x-audio.dtbo \
    overlays/allo-piano-dac-plus-pcm512x-audio.dtbo \
    overlays/applepi-dac.dtbo \
    overlays/at86rf233.dtbo \
    overlays/audioinjector-addons.dtbo \
    overlays/audioinjector-ultra.dtbo \
    overlays/audioinjector-wm8731-audio.dtbo \
    overlays/audremap.dtbo \
    overlays/balena-fin.dtbo \
    overlays/bmp085_i2c-sensor.dtbo \
    overlays/dht11.dtbo \
    overlays/dionaudio-loco.dtbo \
    overlays/dionaudio-loco-v2.dtbo \
    overlays/dpi18.dtbo \
    overlays/dpi24.dtbo \
    overlays/dwc2.dtbo \
    overlays/dwc-otg.dtbo \
    overlays/enc28j60.dtbo \
    overlays/enc28j60-spi2.dtbo \
    overlays/exc3000.dtbo \
    overlays/fe-pi-audio.dtbo \
    overlays/goodix.dtbo \
    overlays/googlevoicehat-soundcard.dtbo \
    overlays/gpio-fan.dtbo \
    overlays/gpio-ir.dtbo \
    overlays/gpio-ir-tx.dtbo \
    overlays/gpio-key.dtbo \
    overlays/gpio-no-bank0-irq.dtbo \
    overlays/gpio-no-irq.dtbo \
    overlays/gpio-poweroff.dtbo \
    overlays/gpio-shutdown.dtbo \
    overlays/hd44780-lcd.dtbo \
    overlays/hifiberry-amp.dtbo \
    overlays/hifiberry-dac.dtbo \
    overlays/hifiberry-dacplus.dtbo \
    overlays/hifiberry-digi.dtbo \
    overlays/hifiberry-digi-pro.dtbo \
    overlays/hy28a.dtbo \
    overlays/hy28b-2017.dtbo \
    overlays/hy28b.dtbo \
    overlays/i2c0-bcm2708.dtbo \
    overlays/i2c1-bcm2708.dtbo \
    overlays/i2c-bcm2708.dtbo \
    overlays/i2c-gpio.dtbo \
    overlays/i2c-mux.dtbo \
    overlays/i2c-pwm-pca9685a.dtbo \
    overlays/i2c-rtc-gpio.dtbo \
    overlays/i2c-rtc.dtbo \
    overlays/i2c-sensor.dtbo \
    overlays/i2s-gpio28-31.dtbo \
    overlays/iqaudio-dac.dtbo \
    overlays/iqaudio-dacplus.dtbo \
    overlays/iqaudio-digi-wm8804-audio.dtbo \
    overlays/jedec-spi-nor.dtbo \
    overlays/justboom-dac.dtbo \
    overlays/justboom-digi.dtbo \
    overlays/lirc-rpi.dtbo \
    overlays/ltc294x.dtbo \
    overlays/mbed-dac.dtbo \
    overlays/mcp23017.dtbo \
    overlays/mcp23s17.dtbo \
    overlays/mcp2515-can0.dtbo \
    overlays/mcp2515-can1.dtbo \
    overlays/mcp3008.dtbo \
    overlays/mcp3202.dtbo \
    overlays/media-center.dtbo \
    overlays/midi-uart0.dtbo \
    overlays/midi-uart1.dtbo \
    overlays/mmc.dtbo \
    overlays/mpu6050.dtbo \
    overlays/mz61581.dtbo \
    overlays/ov5647.dtbo \
    overlays/papirus.dtbo \
    overlays/pi3-act-led.dtbo \
    overlays/pi3-disable-bt.dtbo \
    overlays/pi3-disable-wifi.dtbo \
    overlays/pi3-miniuart-bt.dtbo \
    overlays/pibell.dtbo \
    overlays/piscreen2r.dtbo \
    overlays/piscreen.dtbo \
    overlays/pisound.dtbo \
    overlays/pitft22.dtbo \
    overlays/pitft28-capacitive.dtbo \
    overlays/pitft28-resistive.dtbo \
    overlays/pitft35-resistive.dtbo \
    overlays/pps-gpio.dtbo \
    overlays/pwm-2chan.dtbo \
    overlays/pwm-ir-tx.dtbo \
    overlays/pwm.dtbo \
    overlays/qca7000.dtbo \
    overlays/rotary-encoder.dtbo \
    overlays/rpi-backlight.dtbo \
    overlays/rpi-cirrus-wm5102.dtbo \
    overlays/rpi-dac.dtbo \
    overlays/rpi-display.dtbo \
    overlays/rpi-ft5406.dtbo \
    overlays/rpi-poe.dtbo \
    overlays/rpi-proto.dtbo \
    overlays/rpi-sense.dtbo \
    overlays/rpi-tv.dtbo \
    overlays/rra-digidac1-wm8741-audio.dtbo \
    overlays/sc16is750-i2c.dtbo \
    overlays/sc16is752-i2c.dtbo \
    overlays/sc16is752-spi1.dtbo \
    overlays/sdhost.dtbo \
    overlays/sdio-1bit.dtbo \
    overlays/sdio.dtbo \
    overlays/sdtweak.dtbo \
    overlays/smi-dev.dtbo \
    overlays/smi-nand.dtbo \
    overlays/smi.dtbo \
    overlays/spi0-cs.dtbo \
    overlays/spi0-hw-cs.dtbo \
    overlays/spi1-1cs.dtbo \
    overlays/spi1-2cs.dtbo \
    overlays/spi1-3cs.dtbo \
    overlays/spi2-1cs.dtbo \
    overlays/spi2-2cs.dtbo \
    overlays/spi2-3cs.dtbo \
    overlays/spi-gpio35-39.dtbo \
    overlays/spi-rtc.dtbo \
    overlays/superaudioboard.dtbo \
    overlays/sx150x.dtbo \
    overlays/tc358743-audio.dtbo \
    overlays/tc358743.dtbo \
    overlays/tinylcd35.dtbo \
    overlays/uart0.dtbo \
    overlays/uart1.dtbo \
    overlays/upstream-aux-interrupt.dtbo \
    overlays/upstream.dtbo \
    overlays/vc4-fkms-v3d.dtbo \
    overlays/vc4-kms-kippah-7inch.dtbo \
    overlays/vc4-kms-v3d.dtbo \
    overlays/vga666.dtbo \
    overlays/w1-gpio.dtbo \
    overlays/w1-gpio-pullup.dtbo \
    overlays/wittypi.dtbo \
    overlays/ratt-ioexpander.dtbo \
    overlays/ratt-lcd.dtbo \
"

XX_KERNEL_DEVICETREE = " \
    ${RPI_KERNEL_DEVICETREE_OVERLAYS} \
    ${RPI_KERNEL_DEVICETREE} \
    "


FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-ratt-dtbo.patch"

do_configure_prepend() {
	kernel_configure_variable I2C y
	kernel_configure_variable I2C_BOARDINFO y
	kernel_configure_variable I2C_COMPAT y
	kernel_configure_variable I2C_CHARDEV y
	kernel_configure_variable GPIO_PCA953X y
	kernel_configure_variable GPIO_PCA953X_IRQ y
		      
	kernel_configure_variable SPI_BCM2835 y
	kernel_configure_variable SPI_BCM2835AUX y
	kernel_configure_variable SPI_SPIDEV y

	kernel_configure_variable FB_CFB_COPYAREA y
	kernel_configure_variable FB_CFB_IMAGEBLIT y
	kernel_configure_variable FB_SYS_FILLRECT y
	kernel_configure_variable FB_SYS_COPYAREA y
	kernel_configure_variable FB_SYS_IMAGEBLIT y
	kernel_configure_variable FB_SYS_FOPS y
	kernel_configure_variable FB_DEFERRED_IO y
	kernel_configure_variable FB_TFT y
	kernel_configure_variable FB_TFT_AGM1264K_FL y
	kernel_configure_variable FB_TFT_BD663474 y
	kernel_configure_variable FB_TFT_HX8340BN y
	kernel_configure_variable FB_TFT_HX8347D y
	kernel_configure_variable FB_TFT_HX8353D y
	kernel_configure_variable FB_TFT_HX8357D y
	kernel_configure_variable FB_TFT_ILI9163 y
	kernel_configure_variable FB_TFT_ILI9320 y
	kernel_configure_variable FB_TFT_ILI9325 y
	kernel_configure_variable FB_TFT_ILI9340 y
	kernel_configure_variable FB_TFT_ILI9341 y
	kernel_configure_variable FB_TFT_ILI9481 y
	kernel_configure_variable FB_TFT_ILI9486 y
	kernel_configure_variable FB_TFT_PCD8544 y
	kernel_configure_variable FB_TFT_RA8875 y
	kernel_configure_variable FB_TFT_S6D02A1 y
	kernel_configure_variable FB_TFT_S6D1121 y
	kernel_configure_variable FB_TFT_SSD1289 y
	kernel_configure_variable FB_TFT_SSD1306 y
	kernel_configure_variable FB_TFT_SSD1331 y
	kernel_configure_variable FB_TFT_SSD1351 y
	kernel_configure_variable FB_TFT_ST7735R y
	kernel_configure_variable FB_TFT_ST7789V y
	kernel_configure_variable FB_TFT_TINYLCD y
	kernel_configure_variable FB_TFT_TLS8204 y
	kernel_configure_variable FB_TFT_UC1701 y
	kernel_configure_variable FB_TFT_UPD161704 y
	kernel_configure_variable FB_TFT_WATTEROTT y
	kernel_configure_variable FB_FLEX y
	kernel_configure_variable FB_TFT_FBTFT_DEVICE y

}



CMDLINE_remove = "console=serial0,115200"

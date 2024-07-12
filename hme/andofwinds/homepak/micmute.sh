state=$(< /sys/class/leds/platform::micmute/brightness)

if [ $state = 0 ]; then
	echo 255 > /sys/class/leds/platform::micmute/brightness
	amixer set Capture on
else
	echo 0 > /sys/class/leds/platform::micmute/brightness
	amixer set Capture off
fi

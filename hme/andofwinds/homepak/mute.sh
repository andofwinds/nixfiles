state=$(< /sys/class/leds/platform::mute/brightness)

if [ $state = 0 ]; then
	echo 255 > /sys/class/leds/platform::mute/brightness
else
	echo 0 > /sys/class/leds/platform::mute/brightness
fi

amixer set Master toggle

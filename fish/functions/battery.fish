function battery
    upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i percentage | cut -d':' -f2 | xargs
end

#!/usr/bin/env bash

# Script for managing bt profiles (music / phone call) for headphones
# Usage: `bt {call|music}
#
# Credits: https://forums.linuxmint.com/viewtopic.php?t=295859

set -e

case "$1" in
  call) profilename="headset_head_unit" ;;
  music) profilename="a2dp_sink_aptx" ;;
esac

# Get Card and Device
cardname=$(pactl list | grep bluez_card | awk '{print $NF}')
devicename=$(pacmd list-sinks | grep -o '<bluez_sink[^>]*' | cut -d\< -f2)

# Change profile and default sink
pactl set-card-profile "$cardname" "$profilename" || echo "Problem setting profile"; exit 3
pacmd set-default-sink "$devicename" || echo "Problem setting default sink"; exit 4

exit 0

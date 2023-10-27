#!/bin/bash
export DISPLAY=:0
export PULSE_SERVER=unix:/run/user/1000/pulse/native
/usr/bin/notify-send "Caution: Health Alert" "It's been an hour. You need to take a break"
paplay /home/poornam/alarms/alarm-clock-short-6402.wav
/usr/bin/notify-send "Caution: Health Alert" "It's been an hour. You need to take a break"





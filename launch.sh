#!/usr/bin/env bash

killall -q polybar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars launched..."

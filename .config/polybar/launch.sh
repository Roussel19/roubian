#!/bin/bash

killall polybar 2>/dev/null

while pgrep polybar >/dev/null; do
    sleep 1
done

polybar main &

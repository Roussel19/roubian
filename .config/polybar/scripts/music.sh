#!/bin/bash


STATUS=$(playerctl status 2>/dev/null)


if [ "$STATUS" = "Playing" ]; then

    ICON="󰏤"

elif [ "$STATUS" = "Paused" ]; then

    ICON="󰐊"

else

    echo "%{F#b0144d}󰎈%{F-}"

    exit

fi


TITLE=$(playerctl metadata title 2>/dev/null | cut -c1-30)


echo "%{F#b0144d}$ICON $TITLE%{F-}"

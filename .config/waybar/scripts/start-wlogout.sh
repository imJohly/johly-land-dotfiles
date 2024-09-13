#!/bin/sh

MARGIN=$(expr $(hyprctl monitors -j | jq '.[0].height') / 2)

wlogout -b 2 -r 2 -c 2 -L $MARGIN -R $MARGIN -p layer-shell

#!/usr/bin/env bash

swayidle -w timeout 300 'swaylock -f' \
            timeout 600 'systemctl suspend' \
            before-sleep 'sh -c "swaylock -f -c 000000 && sleep 3"''

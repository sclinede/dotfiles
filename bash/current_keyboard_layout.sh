#!/bin/bash
case "$(xset -q|grep LED| awk '{ print $10 }')" in "00000002") KBD="EN";; "00001002") KBD="RU";; *) KBD="N/A";; esac; echo $KBD


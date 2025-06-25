#!/usr/bin/env sh

hyprctl devices -j | jq -r '.keyboards[] | select(.name=="framework-laptop-16-keyboard-module---ansi-keyboard")|.active_keymap' | sed 's/English //'

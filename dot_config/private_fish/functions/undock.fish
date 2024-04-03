#!/usr/bin/env fish

function undock
    hyprctl keyword monitor HDMI-A-1, disable
    hyprctl keyword monitor eDP-1, 1920x1200@60, 0x0, 1
end

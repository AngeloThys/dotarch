#!/usr/bin/env fish

function dock
    hyprctl keyword monitor HDMI-A-1, 2560x1440@144, 0x0, 1
    hyprctl keyword monitor eDP-1, disable
end

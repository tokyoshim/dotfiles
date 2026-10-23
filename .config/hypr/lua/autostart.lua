hl.on("hyprland.start", function ()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprsunset --temperature 3000 < /dev/null > /dev/null 2>&1 &")
end)

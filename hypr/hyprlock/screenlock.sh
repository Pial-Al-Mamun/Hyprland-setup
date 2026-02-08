# enter the live wallpaper you want also if you want then you can just enter a pic and it'll work
wallpaper=$HOME/.config/hypr/video/mylivewallpapers.com-DedSec-Hacker.mp4   # This is just an example wallpaper

#don't worry about this variable it'll do
current=$(hyprctl activeworkspace -j | jq '.id')

mpvpaper -o '--loop --no-audio --hwdec=no --no-config --input-ipc-server=/tmp/mpvsocket' eDP-1 $wallpaper & hyprlock; pkill mpvpaper

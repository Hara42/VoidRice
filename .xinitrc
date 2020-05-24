[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[ -f ~/.xprofile ] && . ~/.xprofile

# Statusbar loop
while true; do
   xsetroot -name "$(date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

# Autostart section
start-pulseaudio-x11 &
exec dwm

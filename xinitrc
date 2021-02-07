# multimonitor config
xrandr --output DisplayPort-1 --auto --left-of DisplayPort-0 --output HDMI-A-0 --auto --right-of DisplayPort-0

# enable compositor
compton &
#picom &

# set pape
~/.config/.fehbg &

# disable monitor sleep/timeout
xset -dpms
xset s off

# hide cursor after 3 seconds of inactivity
unclutter -idle 3 &

# start dwm and save a logfile
exec dwm > ~/.config/suckless/.dwm.log

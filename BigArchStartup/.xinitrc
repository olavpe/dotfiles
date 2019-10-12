###Define the custom video modes for the system

### To make sure that Xresources load for urxvt settings
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#To run Monitor detection for ultrawide
sh /home/olav/.config/autostart/startupMonitorDetection.sh

exec i3

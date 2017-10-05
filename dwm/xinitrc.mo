#(conky | while read LINE;do xsetroot -name "$LINE"; done) &
while true; do
	xsetroot -name "$( date +"%F %R" )   "
	sleep 1m
done &
xrandr -s 5
export GTX_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

fcitx
exec dwm

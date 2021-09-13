setxkbmap -option caps:escape
~/Documents/Scripts/RepeatRate.sh
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec i3

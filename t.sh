#!/bin/bash
sn=gs
codez_root=/home/gsd/source/gamesalad/

cd "$codez_root/gsdotcom"
set -- $(stty size) # $1 = rows $2 = columns
tmux new-session -d -n gsdotcom -s "$sn" -x "$2" -y "$(($1 - 1))" # status line uses a row
tmux select-window -t "$sn:0"
tmux source-file ~/.tmux/layout_window

cd /home/gsd/source/gamesalad/game_salad_api
tmux new-window -t "$sn:1" -n 'gamesalad_api_client'
tmux select-window -t "$sn:1"
tmux source-file ~/.tmux/layout_window

cd /home/gsd/source/gamesalad/api2
tmux new-window -t "$sn:2" -n 'api2' 
tmux select-window -t "$sn:2"
tmux source-file ~/.tmux/layout_window

tmux select-window -t "$sn:0"
tmux -2 attach-session -t "$sn"


tmux select-window -t "$sn:0"
tmux -2 attach-session -t "$sn"

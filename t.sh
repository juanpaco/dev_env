#!/bin/bash
sn=devenv
codez_root=~/source/

cd "$codez_root"
set -- $(stty size) # $1 = rows $2 = columns
tmux new-session -d -n codez -s "$sn" -x "$2" -y "$(($1 - 1))" # status line uses a row
tmux select-window -t "$sn:0"
tmux source-file ~/.tmux/layout_window

tmux select-window -t "$sn:0"
tmux -2 attach-session -t "$sn"

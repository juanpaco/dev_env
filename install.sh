#!/bin/bash

cp .vimrc ~/.vimrc
rm -Rf ~/.vim
cp -R .vim ~/.vim

cp -R .tmux ~/.tmux
cp .tmux.conf ~/.tmux.conf
cp t.sh ~/t.sh


#!/bin/bash

ln -s $(pwd)/.vimrc $HOME/.vimrc
rm -Rf $HOME/.vim
ln -s $(pwd)/.vim $HOME/.vim

rm -Rf $HOME/.tmux
ln -s $(pwd)/.tmux $HOME/.tmux
ln -s $(pwd)/.tmux/layout_window $HOME/layout_window
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/t.sh $HOME/t.sh
ln -s $(pwd)/tm $HOME/tm

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

######## Put some stuff in .bashrc
echo "source $(pwd)/git-completion.bash" >> $HOME/.bashrc
echo "source $(pwd)/git-prompt.sh" >> $HOME/.bashrc

read -r -d '' VAR <<'EOF'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
EOF

echo $VAR >> $HOME/.bashrc
echo "export VISUAL=vim" >> $HOME/.bashrc
echo "export EDITOR=\"$VISUAL\"" >> $HOME/.bashrc
######## END .bashrc

git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

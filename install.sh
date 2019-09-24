#!/bin/bash

rm -Rf $HOME/.tmux
ln -s $(pwd)/.tmux $HOME/.tmux
ln -s $(pwd)/.tmux/layout_window $HOME/layout_window
ln -s $(pwd)/.tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/t.sh $HOME/t.sh
ln -s $(pwd)/tm $HOME/tm

rm -Rf $HOME/.config
ln -s $(pwd)/.config $HOME/.config

# Install Plug - plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim +PluginInstall +qall

######## Put some stuff in .bashrc
echo "source $(pwd)/git-completion.bash" >> $HOME/.bashrc
echo "source $(pwd)/git-prompt.sh" >> $HOME/.bashrc

read -r -d '' VAR <<'EOF'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
EOF

echo $VAR >> $HOME/.bashrc
echo "export VISUAL=nvim" >> $HOME/.bashrc
echo "export EDITOR=\"$VISUAL\"" >> $HOME/.bashrc
# Let tmux use all teh colors
echo "export TERM=\"xterm-256color\"" >> $HOME/.profile
######## END .bashrc

######## GIT CONFIG
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global push.default simple
######## END GIT CONFIG

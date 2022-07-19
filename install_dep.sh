#!/bin/bash
# Install for init
#printf "Install for a fresh server? [y/N]: "
#if read -q; then
#  slient sudo apt update
#  slient echo; sudo apt install htop bc ssh python3-dev python3-pip python3-setuptools tofrodos -y
#fi

# # Uncomments this if you have sudo...
# printf "Install requirements"
#sudo add-apt-repository ppa:aacebedo/fasd
#sudo apt-get install zsh fasd docker thefuck tmuxinator -y

echo; echo "Install oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
# echo; echo "Install zinit for zsh plugins"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo; echo "Setup vim"
cp .vimrc $HOME

# Start zsh
echo; echo "Setup zsh"
cp .zshrc $HOME

echo; echo "Setup restarting with zsh."
sudo chsh -s `which zsh`
echo "If it didn't work please setup with chsh -s `which zsh`"

echo; echo "Setup tmux"
cp .tmux.conf $HOME

echo; echo "Finish!!"; echo;

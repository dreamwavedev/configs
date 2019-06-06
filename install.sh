#!/bin/sh

# install common deps
sudo echo "authenticated"

{
	sudo apt -y install fish neovim ripgrep cargo zsh build-essential git pkg-config curl
} ||
{
	sudo pacman -S --noconfirm base-devel fish neovim ripgrep cargo zsh git pkg-config curl
} ||
{
	sudo dnf -y install fish ripgrep cargo git neovim zsh pkg-config curl
}

# place vimrc
cp ./.vimrc ~/.vimrc
# end

# link neovim to normal vimrc
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc" >> ~/.config/nvim/init.vim
# end

# get vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# end
# do vim plugins
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
curl -sL install-node.now.sh | sh
#

# set git configs
# end

# install dependent stuff
cargo install powerline-rs --force

sudo chsh -s "$(which fish)" $(whoami)

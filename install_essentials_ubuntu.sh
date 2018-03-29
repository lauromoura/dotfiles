#!/bin/sh

should_install=0;
if ! which nvim; then
	echo "Neovim not found. Installing."
	sudo add-apt-repository ppa:neovim-ppa/stable -y
	should_install=1
else
	echo "Neovim found."
fi

if ! which fish; then
	echo "Fish not found. Installing."
	sudo apt-add-repository ppa:fish-shell/release-2 -y
	should_install=1
else
	echo "Fish found"
fi

if [ "$should_install" -eq "1" ]; then
	sudo apt-get update
	sudo apt-get install neovim fish
fi

echo "Updating default vim to Neovim"
sudo update-alternatives --set vim `which nvim`

echo "Updating default shell to fish"
chsh -s `which fish`

# oh-my fish
if ! fish -c "omf --version"; then
	echo "Installing oh-my-fish"
	curl -L https://get.oh-my.fish | fish
else
	echo "oh-my-fish found."
fi

# My dotfiles
./push_changes.sh

# The best theme
if ! fish -c "omf ls" | grep bobthefish; then
	echo "Installing bobthefish"
	omf install bobthefish
else
	echo "bobthefish installed"
fi

# to-fish bookmarks
echo "Installing to-fish"
if ! fish -c "omf ls" | grep to-fish; then
	echo "Installing to-fish"
	omf install https://github.com/joehillen/to-fish
else
	echo "to-fish already installed"
fi

# fzf finder
if ! which fzf; then
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
else
	echo "fzf already installed"
fi

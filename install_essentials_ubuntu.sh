#/bin/sh

sudo apt-add-repository ppa:fish-shell/release-2
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim fish
sudo update-alternatives --set vim `which nvim`

# oh-my fish
curl -L https://get.oh-my.fish | fish

# My dotfiles
./push_changes.sh

# The best theme
omf install bobthefish

# to-fish bookmarks
omf install https://github.com/joehillen/to-fish

# fzf finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

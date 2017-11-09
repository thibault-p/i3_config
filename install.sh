# Installing dependencies
sudo apt install feh i3blocks zsh numlockx dunst


# Retrieve script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"


echo "Creating symlink..."
ln -s $DIR/.i3/ $HOME/.i3
ln -s $DIR/.i3blocks $HOME/.i3blocks
ln -s $DIR/.wallpapers $HOME/.wallpapers

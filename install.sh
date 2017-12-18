# Installing dependencies
sudo apt install feh i3blocks zsh numlockx dunst



# Retrieve script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"


echo "Installing extra fonts..."
PWD="$(pwd)"

cd /tmp
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

cd $PWD


echo "Creating symlink..."
ln -s $DIR/.i3/ $HOME/.i3
ln -s $DIR/.i3blocks $HOME/.i3blocks
ln -s $DIR/.wallpapers $HOME/.wallpapers
ln -s $DIR/.oh-my-zsh/ $HOME/.oh-my-zsh

echo "Setting zsh as default shell..."
chsh -s $(which zsh)

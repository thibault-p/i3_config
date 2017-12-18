# Installing dependencies
sudo apt install feh i3blocks zsh numlockx dunst  fonts-font-awesome



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
ln -s $HOME/.i3/ .i3
ln -s $HOME/.i3blocks .i3blocks
ln -s $HOME/.wallpapers .wallpapers
ln -s $HOME/.oh-my-zsh/ .oh-my-zsh
ln -s $HOME/.zshrc/ .zshrc

echo "Setting zsh as default shell..."
chsh -s $(which zsh)

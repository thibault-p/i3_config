# Installing dependencies
sudo apt install feh i3blocks zsh numlockx dunst fonts-font-awesome scrot imagemagick i3lock



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
ln -s .i3/ $HOME/.i3
ln -s .i3blocks $HOME/.i3blocks
ln -s .wallpapers $HOME/.wallpapers
ln -s .oh-my-zsh/ $HOME/.oh-my-zsh
ln -s .zshrc/ $HOME/.zshrc

echo "Setting zsh as default shell..."
chsh -s $(which zsh)

# Installing dependencies
sudo apt install feh i3blocks zsh numlockx dunst fonts-font-awesome scrot \
imagemagick i3lock pkg-config libxcb1 libxcb-util libpam-dev libcairo-dev \
 libfontconfig-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0 \
 libxcb-randr0 libev-dev libx11-xcb-dev libxkbcommon0 libxkbcommon-x11-0 libjpeg-turbo8 \
 autoconf


# Retrieve script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "Script dir: $DIR"

PWD="$(pwd)"

echo "Installing i3lock-color..."

cd /tmp
git clone https://github.com/PandorasFox/i3lock-color.git

cd i3lock-color
autoreconf -i && ./configure && make
sudo make install
cd ..
rm -rf i3lock-color



echo "Installing extra fonts..."


cd /tmp
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
sudo ./install.sh
# clean-up a bit
cd ..
rm -rf fonts

cd $PWD


echo "Creating symlink..."
ln -sf $DIR/.i3/ $HOME/.i3
ln -sf $DIR/.i3blocks $HOME/.i3blocks
ln -sf $DIR/.wallpapers $HOME/.wallpapers
ln -sf $DIR/.oh-my-zsh/ $HOME/.oh-my-zsh
ln -sf $DIR/.zshrc $HOME/.zshrc

echo "Setting zsh as default shell..."
sudo chsh -s $(which zsh)

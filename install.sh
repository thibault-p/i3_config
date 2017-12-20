# Installing dependencies
sudo apt install feh i3blocks zsh numlockx dunst fonts-font-awesome scrot \
imagemagick xautolock


# Retrieve script dir
DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "Script dir: $DIR"

PWD="$(pwd)"

echo "Installing i3lock-color..."

sudo apt-get install pkg-config libxcb1 libpam-dev libcairo-dev libxcb-composite0 libxcb-composite0-dev libxcb-xinerama0-dev libev-dev libx11-dev libx11-xcb-dev libxkbcommon0 libxkbcommon-x11-0 libxcb-dpms0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xkb-dev libxkbcommon-x11-dev libxkbcommon-dev
cd /tmp

git clone https://github.com/petrhosek/i3lock-color.git

cd i3lock-color
make
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

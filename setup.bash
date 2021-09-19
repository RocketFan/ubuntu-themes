# Main dependencies:
#   - Alacritty
#   - polybar-themes (https://github.com/adi1090x/polybar-themes)

# Install some requirements
sudo apt update
sudo apt install git picom light snapd python3-pip

# Install Alacritty
sudo snap install --classic alacritty

# Install Polybar
sudo apt install build-essential git cmake cmake-data \
    pkg-config python3-sphinx python3-packaging \
    libcairo2-dev libxcb1-dev libxcb-util0-dev \
    libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen \
    xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev \
    libasound2-dev libpulse-dev i3-wm libjsoncpp-dev \
    libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

git clone --recursive https://github.com/polybar/polybar
cd polybar

mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install

cd ../..
rm -rf polybar

# Install other polybar-themes dependencies:
sudo apt install rofi calc
pip3 install pywal

# # Prepare folders and bash
# shopt -s extglob

# rm -rf .themes
# rm -rf .icons

# mkdir -p .themes
# mkdir -p .icons

# # Download themes
# cd themes
# wget https://github.com/dracula/gtk/archive/master.zip
# unzip *.zip -d dracula-gtk
# rm -rf *.zip

# cd ../icons
# wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
# unzip *.zip -d dracula-gtk-icons
# rm -rf *.zip

# # Replace config and theme files
# cd ..
# cp -r .@(!(.|git|gitignore|)) ~/

# # Activating gtk theme
# gsettings set org.gnome.desktop.interface gtk-theme "dracula-gtk"
# gsettings set org.gnome.desktop.wm.preferences theme "dracula-gtk"

# # Activating gtk icons
# gsettings set org.gnome.desktop.interface icon-theme "dracula-gtk-icons"
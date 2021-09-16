# Install requirements
sudo apt update
sudo apt install git

# Prepare folders and bash
shopt -s extglob

rm -rf .themes
rm -rf .icons

mkdir -p .themes
mkdir -p .icons

# Download themes
cd themes
wget https://github.com/dracula/gtk/archive/master.zip
unzip *.zip -d dracula-gtk
rm -rf *.zip

cd ../icons
wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip *.zip -d dracula-gtk-icons
rm -rf *.zip

cd ..
cp -r .@(!(.|git|gitignore|)) ~/

# Activating gtk theme
gsettings set org.gnome.desktop.interface gtk-theme "dracula-gtk"
gsettings set org.gnome.desktop.wm.preferences theme "dracula-gtk"

# Activating gtk icons
gsettings set org.gnome.desktop.interface icon-theme "dracula-gtk-icons"
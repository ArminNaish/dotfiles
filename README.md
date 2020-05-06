# dotfiles

## i3
```bash
apt install i3
```


## i3 gaps
```bash
# install build dependencies
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

cd /tmp

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
```

## other packages
```bash
# urxvt
apt install rxvt-unicode

# compton
apt install compton

# nitrogen
apt install nitrogen

# lxappearance
apt install lxappearance

# fantasque sans mono 
apt-get install fontforge

# hack
apt-get install fonts-hack-ttf

# awesome
apt-get install fonts-font-awesome

# powerline
apt-get install powerline

# oomox
# For Debian 9+, Ubuntu 17.04+ or Linux Mint 19+ you can download oomox.deb # package here: https://github.com/themix-project/oomox/releases

sudo apt install ./oomox_VERSION_17.04+.deb  # or ./oomox_VERSION_18.10+.deb for Ubuntu 18.10+
```

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

# dunst
sudo apt install dunst

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

## zsh / presto
Prezto will work with any recent release of Zsh, but the minimum required version is 4.3.11.

Install zsh:
```bash
apt install zsh
```

Launch zsh:

```bash
zsh
```

Clone the repository:
```bash
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```
Create a new Zsh configuration by copying the Zsh configuration files provided:
```bash
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
Note: If you already have any of the given configuration files, ln will cause error. In simple cases you can load prezto by adding the line source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" to the bottom of your .zshrc and keep the rest of your Zsh configuration intact. For more complicated setups, it is recommended that you back up your original configs and replace them with the provided prezto runcoms.

Set Zsh as your default shell:
```bash
chsh -s /bin/zsh
```
Open a new Zsh terminal window or tab.

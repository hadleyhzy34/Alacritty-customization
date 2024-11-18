sudo apt-get update
# install gcc
sudo apt-get install ninja-build gettext cmake unzip curl build-essential libfontconfig1-dev
sudo apt-get install gcc-12
sudo rm -rf ~/usr/bin/gcc
sudo ln -s /usr/bin/gcc-12 /usr/bin/gcc
sudo apt install libstdc++-12-dev
cd ~
mkdir Developments
cd Developments
# install neovim
git clone https://github.com/neovim/neovim
git checkout stable
cd neovim && make CMAKE_BUILD_TYPE=Release
sudo make install
# install curl
sudo apt-get install curl wget
# install cargo
cd ~/Downloads
curl https://sh.rustup.rs -sSf | sh
# install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install v20.18.0
# install lazyvim
sudo apt install fd-find ripgrep
git clone git@github.com:hadleyhzy34/nvim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
# install fonts
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
mkdir ~/.fonts/
mv ~/Downloads/FiraCode.zip ~/.fonts/.
cd ~/.fonts
unzip FiraCode
fc-cache -fv
# install alacritty
cargo install alacritty
. "$HOME/.cargo/env"
cd ~/Developments
git clone https://github.com/hadleyhzy34/Alacritty-customization.git
cd Alacritty-customization
mkdir -p ~/.config/alacritty
cp ~/Developments/Alacritty-customization/alacritty.toml ~/.config/alacritty/.
sudo mv alacritty.desktop /usr/share/applications/alacritty.desktop
sudo chmod +x /usr/share/applications/alacritty.desktop
wget https://raw.githubusercontent.com/alacritty/alacritty/master/extra/logo/alacritty-term.svg -O alacritty.svg
mkdir -p /usr/share/pixmaps
sudo mv alacritty.svg /usr/share/pixmaps/alacritty.svg
# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
# install tmux
sudo apt-get install tmux
cd ~/Developments
git clone https://github.com/hadleyhzy34/tmux-customization.git
cd tmux-customization
cp .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

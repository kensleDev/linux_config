# ------------------------------------ COMMAND LINE
HOME_DIR=/home/kd

function log() {
  echo "-------------------------------"
  echo "-> $1"
  echo "-------------------------------"
}

# install zsh
sudo apt-get install -y zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended &&

# if the script stoppped when installing oh my zsh resume from here
curl -L git.io/antigen > $HOME_DIR/.oh-my-zsh/plugins/antigen.zsh &&

# copy dotfiles
cp ../dotfiles/.zshrc $HOME_DIR
cp ../dotfiles/.alias $HOME_DIR
cp ../dotfiles/.gitconfig $HOME_DIR
log "Copied Dotfiles"

# setup Fonts
sudo apt-get install fontconfig &&
mkdir ~/.fonts &&
cp ~/.config/fonts/VictorMono/TTF/* ~/.fonts &&
sudo fc-cache -f -v &&
log "setup fonts" &&

# Build tools 
sudo apt-get install -y autotools-dev autoconf pkg-config &&
sudo apt install -y software-properties-common &&
log "Installed build tools" &&

#python
sudo add-apt-repository -y ppa:deadsnakes/ppa &&
sudo apt-get update &&
sudo apt install -y python2.7 python-pip python3.8 python3-pip &&
log "Installed python" &&

# ripgrep
sudo add-apt-repository -y ppa:x4121/ripgrep &&
sudo apt-get update &&
sudo apt-get install ripgrep -y &&
log "Installed Ripgrep" &&

# Universal Ctags
git clone https://github.com/universal-ctags/ctags.git &&
cd ctags &&
./autogen.sh &&
./configure &&
make &&
sudo make install &&
cd ..
sudo rm -rf ctags

# fd-find
wget https://github.com/sharkdp/fd/releases/download/v8.1.1/fd-musl_8.1.1_amd64.deb &&
sudo dpkg -i fd-musl_8.1.1_amd64.deb &&
log "Installed fd"

# Silver Sercher Ag
sudo apt install -y silversearcher-ag &&
log "Installed Silver Searcher ag"

# bat
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb &&
sudo dpkg -i ./bat_0.15.4_amd64.deb &&
sudo rm -rf bat_0.15.4_amd64.deb &&
log "Installed bat" &&

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf &&
~/.fzf/install --all &&
log "Installed FZF" &&

# nvm, node, yarn 
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash &&
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 12.13.0
npm i -g yarn 
log "Installed node and yarn"

# Clean up zsh
echo "zsh" >> $HOME_DIR/.bashrc
exec bash -l


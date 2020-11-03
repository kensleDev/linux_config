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
log "setup fonts"

# command line tools - vim
sudo apt-get install ripgrep bat ctags -y &&
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf &&
~/.fzf/install --all &&
log "Installed command line tools"

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


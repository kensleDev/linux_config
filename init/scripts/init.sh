# ------------------------------------ COMMAND LINE
HOME_DIR=/home/kd

# install zsh
sudo apt-get install -y zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended &&

# if the script stoppped when installing oh my zsh resume from here
curl -L git.io/antigen > $HOME_DIR/.oh-my-zsh/plugins/antigen.zsh &&

# Copy Dotfiles
cp ../dotfiles/.zshrc $HOME_DIR
cp ../dotfiles/.alias $HOME_DIR
cp ../dotfiles/.gitconfig $HOME_DIR

# nvm, node, yarn 
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh && source ~/.zshrc &&
nvm install 12.13.0 &&
npm i -g yarn

# Clean up zsh
echo "zsh" >> $HOME_DIR/.bashrc &&
exec bash -l





# ------------------------------------ COMMAND LINE
HOME_DIR=/home/kd

# install nvm

# install zsh
sudo apt-get install -y zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended &&

# if the script stoppped when installing oh my zsh resume from here
curl -L git.io/antigen > $HOME_DIR/.oh-my-zsh/plugins/antigen.zsh &&

# Copy Dotfiles
cp ../dotfiles/.zshrc $HOME_DIR
cp ../dotfiles/.alias $HOME_DIR
cp ../dotfiles/.gitconfig $HOME_DIR

# Clean up zsh
echo "zsh" >> $HOME_DIR/.bashrc &&
exec bash -l

# For updating the files in this gist
git clone https://gist.github.com/kensleDev/e27ddee966af517a712e9e2f8043eedc $HOME_DIR/.config/init/
mv  $HOME_DIR/.config/init/e27ddee966af517a712e9e2f8043eedc $HOME_DIR/.config/init/gist

# nvm, node, yarn 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash &&
$HOME_DIR/.nvm/nvm install 12.13.0 &&
npm i -g yarn



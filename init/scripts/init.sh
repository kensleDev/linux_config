# ------------------------------------ COMMAND LINE
HOME_DIR=/home/kd

# install zsh
sudo apt-get install -y zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended &&

# if the script stoppped when installing oh my zsh resume from here
curl -L git.io/antigen > $HOME_DIR/.oh-my-zsh/plugins/antigen.zsh &&

# Copy Dotfiles
<<<<<<< HEAD
cp ../dotfiles/.zshrc /home/kd
cp ../dotfiles/.alias /home/kd
cp ../dotfiles/.gitconfig /home/kd
=======
cp ../dotfiles/.zshrc $HOME_DIR
cp ../dotfiles/.alias $HOME_DIR
cp ../dotfiles/.gitconfig $HOME_DIR


# nvm, node, yarn 
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash &&
>>>>>>> a38d62596e29ca3932cd31833e351aefb7aabc29

# Clean up zsh
source ~/.zshrc &&

echo "loadnvm"
echo "nvm install 12.13.0 && npm i -f yarn"




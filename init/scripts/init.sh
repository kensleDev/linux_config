# ------------------------------------ COMMAND LINE

# install nvm

# install zsh
sudo apt-get install -y zsh &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended &&

# if the script stoppped when installing oh my zsh resume from here
curl -L git.io/antigen > ~/.oh-my-zsh/plugins/antigen.zsh &&

# Copy Dotfiles
cp ../dotfiles/.zshrc /home/kd
cp ../dotfiles/.alias /home/kd
cp ../dotfiles/.gitconfig /home/kd

# Clean up zsh
echo "zsh" >> ~/.bashrc &&
exec bash -l

# For updating the files in this gist
git clone https://gist.github.com/kensleDev/e27ddee966af517a712e9e2f8043eedc /home/kd/.config/init/
mv  /home/kd/.config/init/e27ddee966af517a712e9e2f8043eedc /home/kd/.config/init/gist

# nvm, node, yarn 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash &&
/home/kd/.nvm/nvm install 12.13.0 &&
npm i -g yarn



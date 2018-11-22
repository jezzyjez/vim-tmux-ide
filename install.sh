echo "Installing Dependencies"
apt-get update 
sudo apt install git
apt-get install vim
apt-get install python3.6
apt-get install tmux=2.6
apt-get install

echo "Installing FuzzyFinder"
#Install Fuzzy Finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/VundleVim/Vundle.vim.git ~/
git clone git@github.com:jezzyjez/LinuxProfile.git
cp ~/LinuxProfile/.vimrc ~/.vimrc
cp ~/LinuxProfile/.tmux-conf ~/.tmux-conf
echo "installing vim plugin"
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py

echo "source LinuxProfile/.profile" >> ~/.bashrc
 
echo "Installing PowerLine"
pip3 install powerline-status
apt-get install fonts-powerline
apt-get install terminator
apt install build-essential cmake python3-dev

echo "Install nodejs"
apt-get install nodejs
aptget install eslint

echo "installing yarn"
apt-get install npm
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn

echo "installing rvm"

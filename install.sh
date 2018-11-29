echo "Installing Dependencies"
apt-get update 
sudo apt install git apt-get install vim
apt-get install python3.6
apt-get install python3-pip
apt-get install python-pip
apt-get install python
apt-get install tmux=2.6
apt-get install curl

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

echo "source ~/LinuxProfile/.profile" >> ~/.bashrc
 
echo "Installing PowerLine"
pip3 install powerline-status
apt-get install fonts-powerline
apt-get install terminator
apt install build-essential cmake python3-dev

echo "Install nodejs"
apt-get install npm
apt-get install nodejs
npm install eslint -g

echo "installing yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn

echo "install virutalenvwrapper"
apt-get install virtualenv
apt-get install virtualenvwrapper

#https://github.com/rvm/ubuntu_rvm
echo "installing rvm"
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm

rvm group add rvm "$USER"
rvm fix-permissions
echo "Restart is required to use RVM"

echo configuring git to use vim as editor and differ
git config --global core.editor "vim"
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff

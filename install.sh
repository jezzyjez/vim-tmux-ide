echo "Installing Dependencies"
apt-get -y update 
apt install -y git
apt-get install -y vim
apt-get install -y python3.6
apt-get install -y python3-pip
apt-get install -y python-pip
apt-get install -y python
apt-get install -y tmux=2.6
apt-get install -y curl

echo "Installing FuzzyFinder"
#Install Fuzzy Finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/VundleVim/Vundle.vim.git ~/
git clone git@github.com:jezzyjez/LinuxProfile.git
cp ~/LinuxProfile/.vimrc ~/.vimrc
cp ~/LinuxProfile/.tmux-conf ~/.tmux-conf
echo "installing vim plugin"
pip3 install neovim
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.py
#https://github.com/python-mode/python-mode/issues/958

echo "source ~/LinuxProfile/.profile" >> ~/.bashrc
 
echo "Installing PowerLine"
pip3 install powerline-status
apt-get install fonts-powerline
apt-get install terminator
apt install build-essential cmake python3-dev

echo "Install nodejs"
apt-get -y install npm
apt-get -y install nodejs
npm install eslint -g

echo "installing yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn

echo "install virutalenvwrapper"
apt-get install -y virtualenv
apt-get install -y virtualenvwrapper

#https://github.com/rvm/ubuntu_rvm
echo "installing rvm"
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install -y rvm

rvm group add rvm "$USER"
rvm fix-permissions
echo "Restart is required to use RVM"

echo configuring git to use vim as editor and differ
git config --global core.editor "vim"
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff

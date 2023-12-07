sudo apt install wget -y
# wget https://raw.githubusercontent.com/phultquist/dotfiles/master/.vimrc
wget https://raw.githubusercontent.com/phultquist/dotfiles/main/.gitconfig
wget https://raw.githubusercontent.com/phultquist/dotfiles/main/.tmux.conf
tmux source ~/.tmux.conf
sudo apt-get install apt-file -y
sudo apt-file update -y
sudo apt-get -y upgrade
sudo apt install zsh -y
sudo apt-get install -y git
sudo apt-get install -y python-setuptools
sudo apt-get install -y build-essential
sudo apt install htop -y
sudo apt install -y python-pip
sudo apt install tree
pip install --upgrade pip
sudo apt-get install -y cmake
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim && sudo update-alternatives --set editor /usr/local/bin/vim
sudo apt install ncdu

# oh my bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install gh cli
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

wget https://raw.githubusercontent.com/phultquist/dotfiles/main/.bashrc -O ~/.bashrc

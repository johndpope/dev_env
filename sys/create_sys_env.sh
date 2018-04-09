
function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

sudo apt-get update
sudo apt-get upgrade

if [[ $(program_is_installed conda) -eq 0 ]]; then
    echo 'installing conda...'
    wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda_installer.sh
    chmod +x Miniconda_installer.sh
    ./Miniconda_installer.sh

    echo 'updating conda...'
    conda update conda
    conda update conda-build
else
    echo 'conda is already installed'
fi

if [[ $(program_is_installed tmux) -eq 0 ]]; then
    echo 'installing tmux...'
    sudo apt-get install tmux
else
    echo 'tmux is already installed'
fi

if [[ $(program_is_installed vim) -eq 0 ]]; then
    echo 'installing vim...'
    sudo apt-get install vim
else
    echo 'vim is already installed'
fi
echo 'export VISUAL=vim' >> ~/.bashrc
echo 'export EDITOR="$VISUAL"' >> ~/.bashrc

if [[ $(program_is_installed zsh) -eq 0 ]]; then
    echo 'installing zsh...'
    sudo apt-get --force-yes install zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sudo apt install fonts-powerline
else
    echo 'zsh is already installed'
fi

if [[ $(program_is_installed git) -eq 0 ]]; then
    echo 'installing git...'
    sudo apt-get --force-yes install git
    sudo apt-get --force-yes install git-core
    git config --global user.name "xiangdal"
    git config --global user.email "xiang.jiang@dal.ca"
    git config --global push.default matching
    git config --global credential.helper "cache --timeout=3600"
else
    echo 'git is already installed'
fi


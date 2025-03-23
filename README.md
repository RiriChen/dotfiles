# ⚙️ My Collection of Configs

## Install Packages
\*Look over the installations, this is just my personal default for most machines
- Installs shells, tools, themes, vim customizations, and just some cool stuff
```
sudo apt update
sudo apt install tree
sudo apt install silversearcher-ag
sudo apt install cscope
sudo apt install tmux
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/nanotech/jellybeans.vim.git ~/.vim/bundle/jellybeans
git clone https://github.com/mhinz/vim-signify.git ~/.vim/bundle/vim-signify
```

## Setup Directions
1. Clone repo
```
git clone https://github.com/RiriChen/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Run the setup script
This script:
- Backs up existing config files (like `~/.bashrc`) to `.bak`
- Creates symbolic links from home dir to the files in this repo
```
./setup.sh
```

3. Reload your shell / tools
- Use `Ctrl-a R`(this works due to the custom `.tmux.conf` file) to reload tmux config and `source` for the others

4. Clean up backups (optional)
```
find ~ -maxdepth 1 -name "*.bak" -exec rm {} \;
```

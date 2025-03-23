# ⚙️ My Collection of Configs

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
- Use `Ctrl-a R` to reload tmux config and `source` for the others

4. Clean up backups (optional)
```
rm ~/*.bak
```
or
```
find ~ -maxdepth 1 -name "*.bak" -exec rm {} \;
```

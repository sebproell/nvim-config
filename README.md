# My neovim setup

Clone repo to ~/.config/nvim/

#### Get latest stable release of nvim

```
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz -O - | tar -xz
echo "Add `pwd`/nvim-linux64/bin to your PATH"
```

#### Install [packer](https://github.com/wbthomason/packer.nvim)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Open nvim and `:so` `lua/sebproell/packer.lua`, then `:PackerSync`, restart, done!

#### Optional: fonts

On Ubuntu:
```
cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
```

#### Credits

Initial version heavily inspired by https://github.com/ThePrimeagen/init.lua

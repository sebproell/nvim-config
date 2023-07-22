# Neovim setup

Setup by cloning to ~/.config/nvim/


#### Get latest stable release

```
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz -O - | tar -xz
echo "Add `pwd`/nvim-linux64/bin to your PATH"
```

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

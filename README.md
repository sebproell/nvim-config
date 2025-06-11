# My neovim setup

Clone repo to ~/.config/nvim/

#### Get latest stable release of nvim

```
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz -O - | tar -xz
echo "Add `pwd`/nvim-linux64/bin to your PATH"
```

#### Optional: fonts

On Ubuntu:
```
mkdir -p ~/.fonts
cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
fc-cache -f -v
```

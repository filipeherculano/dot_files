# Custom configuration installation

Clone this repository into your `~/.config/` folder and then install the required dependencies below:

```
cd ~/.config/
git clone https://github.com/filipeherculano/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install silversearcher-ag clang-format ctags
```

Then, you must open Neovim and go into your nvim config file. There is already a shortcut to it

```
SPACE-EV
```

Lastly, install all plugins entering Neovim command

```
:PlugInstall
```

After this, you must compile youcompleteme plugin. To do this, follow:

```
cd ~/.config/nvim/plugged/youcompleteme
./install.sh
```

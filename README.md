# dotfiles

### copy dotfiles
```
$ git clone https://github.com/h-nago/dotfiles.git
$ cp -a dotfiles/. ~/
```

## Emacs
### install emacs, cask
```
$ sudo apt-get install emacs
$ curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
```

### install plugin
```
$ cd ~/.emacs.d
$ cask install
```

## Vim
### install Vundle
```
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```

## Neovim
### install Plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
exec PlugInstall

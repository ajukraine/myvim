# Setup
Clone the repo (somewhere into home folder):
```bash
git clone --recurse-submodules -j8 https://github.com/ajukraine/myvim ~/.myvim
```

To use it's config file you should start Vim with '-u' param like:
```bash
vim -u ~/.myvim/.vimrc
```

Or create a symlink in your home directory:
```bash
ln -s ~/.myvim/.vimrc ~/.vimrc
```

For ease of use just make an alias for that command in your favorite shell (I use 'neo' for Neovim version and 'myvim' for Vim).

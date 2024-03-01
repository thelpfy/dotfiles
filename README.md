# .config

This directory contains the .config for my system

## Requirements

Ensure you have the folloiwng installed on your system

### Git

For the repository

```
pacman -S git
```

## Installation

```
cd ~
git clone git@github.com:thelpfy/dotfiles.git
cd dotfiles
bash ./.config/.install/install.sh
```

then use GNU stow to create the symlinks

```
stow .
```

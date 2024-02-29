# .config

This directory contains the .config for my system

## Requirements

Ensure you have the folloiwng installed on your system

### Git

For the repository

```
pacman -S git
```

### Stow

For the symlinking of the .config

```
pacman -S stow
```

## Installation

First checkout the .config repo in you $HOME directory using git

```
git clone git@github.com:thelpfy/.config.git
cd .config
```

then use GNU stow to create the symlinks

```
stow .
```

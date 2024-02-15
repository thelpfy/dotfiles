# dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the folloiwng installed on your system

### Git

For the repository

```
pacman -S git
```

### Stow

For the symlinking of the dotfiles

```
pacman -S stow
```

## Installation

First checkout the dotfiles repo in you $HOME directory using git

```
git clone git@github.com:thelpfy/dotfiles.git
cd dotfiles
```

then use GNU stow to create the symlinks

```
stow .
```

# Ajani's NvChad Config
This repository serves to hold all the configuration files for a custom NeoVim config tailored for JavaScript/TypeScript/ReactJS projects.

## Setting Up NeoVim
This document is assuming you are a developer of taste and uses **Arch Linux**. Follow the commands below to install NeoVim.

### Install NeoVim through the package manager
Since NeoVim is an official package in the AUR you can download it easily with pacman.
```zsh
$ sudo pacman -S neovim

```
Follow all the instructions until NeoVim is successfully installed.

## Installing The Config
This config is based off [NvChad](https://nvchad.com/). To install it run the following command.
```zsh
$ git clone https://github.com/bombies/starter ~/.config/nvim --depth 1 && nvim

```

Once that's done, the NeoVim config should be fully setup and you can enjoy!

## Additional Steps

### Replacing Vim with NeoVim
You can replace the `vim` command with `nvim` using whichever aliasing tool your shell allows. In the case of **zsh**, you can accomplish this with `alias vim=nvim` and adding that line to your `.zshrc`.

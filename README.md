# Dotfiles (WIP)

Sick of handling all this mess, need a proper solution to provision everything, this is a Work In Progress for my Mac, Sweet Mac.

## Introduction

[dotfiles.github.com](http://dotfiles.github.com/).

## Tools

* ZSH + [Oh-My-ZSH](https://github.com/robbyrussell/oh-my-zsh) + [Antigen](https://github.com/zsh-users/antigen) (TODO)
* VIM + [Vundle](https://github.com/gmarik/vundle)
* [Alias.sh](http://alias.sh/) alias `update-aliases` in oh-my-zsh-custom/aliases.zsh

## Content

* .oh-my-zsh/custom oh-my-zsh custom plugins, aliases, themes...
* .oh-my-zsh/custom/aliases.zsh packaged with [Alias.sh](http://alias.sh/)
* .vim folder with all the Bundles

## TODO

- [ ] Make use of [Antigen](https://github.com/zsh-users/antigen)
- [ ] Consider the brand new [Boxen](http://boxen.github.com/) to provision all this mess?
- [ ] Consider an update of zsh with `brew install zsh` new version 5 available
- [ ] Find a proper solution to handle $PATH
- [ ] Reconsider `update-aliases` alias command as it may represent a security issue, adopt an intermediate file to be reviewed after each update `aliases.zsh.review`?
- [ ] Handle OSX settings
- [ ] Provision Homebrew + must-have packages
- [ ] Provision RVM (or RBenv) + and must-have gems
- [ ] Provision NVM + must-have NPM global packages
- [ ] Provision my custom swiss-dev keyboard layout created with [Ukelele](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=ukelele)
- [ ] Provision SublimeText2 with package manager themes plugins configs etc. Search inspiration in Holman dotfiles
- [ ] Provision Heroku Toolbelt (brew?)
- [ ] Provision EC2 API Tools (brew?)
- [ ] best github alias   https://github.com/pengwynn/dotfiles/commit/82c1be26f65193c7799775dc0cf14e13694ce701
- [ ] https://github.com/rupa/z


## Some source of Inspiration

* https://github.com/mislav/dotfiles
* https://github.com/holman/dotfiles
[Boxen](http://boxen.github.com/)

#!/bin/bash

cd $HOME
for dotfile in .bashrc \
    .bash_profile \
    .gitconfig \
    .gitignore_global \
    .tmux.conf \
    .vimrc \
    .zshrc
    do
        if test -f $dotfile -a ! -L $dotfile; then
            mv $dotfile ${dotfile}.save
        fi
        if test ! -e $dotfile; then
            ln -s ~/.config/dotfiles/$dotfile
        fi
done

#!/bin/bash

cd "$HOME"
for dotfile in .aliases \
    .bashrc \
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

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.config/oh-my-zsh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

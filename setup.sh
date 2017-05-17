#!/bin/bash

cd "$HOME" || exit
for dotfile in .aliases \
    .bashrc \
    .bash_profile \
    .gitconfig \
    .gitignore_global \
    .tmux.conf \
    .vimrc \
    .zshrc
    do
        if test -f $dotfile -e ! -L $dotfile; then
            mv $dotfile ${dotfile}.save
        fi
        if test ! -e $dotfile; then
            ln -s ~/.config/dotfiles/$dotfile
        fi
done

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.config/oh-my-zsh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

mkdir -p $HOME/opt
cd $HOME/opt
if test ! -L matlab; then
    ln -s /usr/local/bin/matlab matlab
fi
if test ! -L anaconda3; then
    ln -s $HOME/anaconda3 anaconda3
fi

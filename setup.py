#!/usr/bin/env python

import os
import sys

try:
    os.chdir(os.environ.get('HOME'))
except:
   sys.exit()

dotfiles = ['.aliases',
            '.bashrc',
            '.bash_profile',
            '.gitconfig',
            '.gitignore_global',
            '.tmux.conf',
            '.vimrc',
            '.zshrc']

for dotfile in dotfiles:
    if os.path.exists(dotfile):
        os.system('mv {} {}.save', (dotfile, dotfile))
    os.system('ln -s ~/.config/dotfiles/{}'.format(dotfile))

os.system('git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.config/oh-my-zsh')

os.system('git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim')
os.system('vim +PluginInstall +qall')

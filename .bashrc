# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

. ~/.aliases

export PATH=$PATH:$HOME'/bin:.:/usr/local/bin'
export LS_COLORS=$LS_COLORS':di=01;33'
export EDITOR="vi"
export CCACHE_COMPRESS=1

#set some bash "tricks"
shopt -s cdspell
shopt -s nocaseglob

unset command_not_found_handle

# setup powerline
#. /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

export PATH="/home/mlp6/anaconda3/bin:$PATH"

export PYTHONPATH="/home/mlp6/projects"

# LSTC env vars
LSTC_LICENSE=network
LSTC_LICENSE_SERVER=durmstrang.egr.duke.edu
export LSTC_LICENSE LSTC_LICENSE_SERVER

umask 0002

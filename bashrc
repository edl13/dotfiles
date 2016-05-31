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
export GREP_OPTIONS='--color=auto'

#set some bash "tricks"
shopt -s cdspell
shopt -s nocaseglob

unset command_not_found_handle

# setup powerline
. /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# added by Anaconda3 2.5.0 installer
export PATH="$HOME/anaconda3/bin:$PATH"

umask 0002

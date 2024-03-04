# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Created by `pipx` on 2022-02-22 06:13:49
export PATH="$PATH:$HOME/.local/bin"
. "$HOME/.cargo/env"

# https://wiki.wireshark.org/TLS#using-the-pre-master-secret
# export SSLKEYLOGFILE=$HOME/sslkey.log

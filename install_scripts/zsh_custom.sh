#!/usr/bin/env sh
# Author: Daniele Tentoni <daniele.tentoni.1996@gmail.com>
# Note: There's some questions in this file that I'd like people reading this
#       file that are more skilled in shell scripting opens issues or prs with
#       some advices to me.

# Ensure that ZSH is installed

ZSH_PATH=`which zsh`
if [ $ZSH_PATH = "zsh not found" ]; then
    >&2 echo "You need zsh installed"
    exit 2 # QUESTION: There's a better error code to return?
fi
if [ -z $ZSH ]; then
    >&2 echo "You need oh-my-zsh installed"
    exit 3
fi

# Check if ZSH_CUSTOM var is set, otherwise declare it at a default value.

if [ -z $ZSH_CUSTOM ]; then
    ZSH_CUSTOM=~/.oh-my-zsh/custom
fi

Z_A_S_PATH=$ZSH_CUSTOM/plugins/zsh-autosuggestions
[ ! -d $Z_A_S_PATH ] && git clone https://github.com/zsh-users/zsh-autosuggestions $Z_A_S_PATH
Z_S_H_PATH=$ZSH_CUSTOM/plugins/zsh-syntax-highlighting
[ ! -d $Z_S_H_PATH ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $Z_S_H_PATH

exit 0

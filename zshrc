# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set the DEFAULT_USER so agnoster theme doesn't show dt@dt-e495
# if I'm on my machine as my user.
DEFAULT_USER="dt"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    pass
    poetry
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ccc,underline"

# Has to run before compinit
fpath+=~/.zfunc

autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

#####
# ENV
#####

# Variables needed by Fastlane https://docs.fastlane.tools/getting-started/ios/setup/#set-up-environment-variables
# Other info: https://docs.fastlane.tools/best-practices/continuous-integration/#environment-variables-to-set

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

##########
# ALIASES

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
##########

if [ -f ~/.zshrc_aliases ]; then
    . ~/.zshrc_aliases
fi

###########
# SETTINGS
###########

# autocomplete functionality

set completion-ignore-case on
set show-all-if-ambiguous on

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# Add poetry bin location
export PATH="$PATH:$HOME/.local/bin"

# Use env var for Cargo (Rust)
if [ -f "$HOME/.cargo/env" ]; then . "$HOME/.cargo/env"; fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

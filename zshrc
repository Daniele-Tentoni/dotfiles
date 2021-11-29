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
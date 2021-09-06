#####
# ENV
#####

# Variables needed by Fastlane https://docs.fastlane.tools/getting-started/ios/setup/#set-up-environment-variables

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

##########
# ALIASES
##########

# Alias: git_prune 
#
# Delete all remote tracking Git branches where the upstream branch has been
# deleted.

alias git_prune="git fetch --prune && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -d"

###########
# SETTINGS
###########

# autocomplete functionality

set completion-ignore-case on
set show-all-if-ambiguous on
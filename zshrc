#####
# ENV
#####

# Variables needed by Fastlane https://docs.fastlane.tools/getting-started/ios/setup/#set-up-environment-variables
# Other info: https://docs.fastlane.tools/best-practices/continuous-integration/#environment-variables-to-set

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

# Alias: ll
#
# List all files in the current directory. Use the following options for ls:
#   - a: Include directory entries whose names begin with a dot (.).
#   - l: List in long format.
#   - F: Display addictional chars for each file type.
#
# From Pop OS! .bashrc

alias ll="ls -alF"

# Alias: runmongoc
#
# Run a mongodb container instance with an open 27017 port.

alias runmongoc='sudo docker run -p 27017:27017 -d --name mongoc mongo'

###########
# SETTINGS
###########

# autocomplete functionality

set completion-ignore-case on
set show-all-if-ambiguous on
# This is the only file to be sourced in your .xyzrc file (.bashrc, .zshrc).
#
# Everything else will be added by the source commands below.
#
# Assuming the config repository is in ~/.config, you can include this file
# by executing the following command:
# $ echo "source ~/.config/rc/main.sh" >> ~/.zshrc

# Run slow commands if necessary
source ~/.config/rc/slow.sh

# Source the list of oh-my-zsh plugins
source ~/.config/rc/zsh_plugins.sh

# Source aliases for commonly used programs.
source ~/.config/rc/aliases/main.sh


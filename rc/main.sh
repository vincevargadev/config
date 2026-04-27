# This is the only file to be sourced in your .xyzrc file (.bashrc, .zshrc).
#
# Everything else will be added by the source commands below.
#
# Assuming the config repository is in ~/.config, you can include this file
# by executing the following command:
# $ echo "source ~/.config/rc/main.sh" >> ~/.zshrc

# This is also needed for having Alacritty+tmux+helix work together.
# Without this, I had issues with the autosuggestions zsh plugin.
# https://github.com/zsh-users/zsh-autosuggestions/issues/229#issuecomment-300675586
export TERM=xterm-256color

export PATH="$HOME/flutter/bin:$PATH"

# For stuff installed with dart pub global activate,
# e.g. melos
export PATH="$PATH":"$HOME/.pub-cache/bin"

export JAVA_HOME="/opt/homebrew/Cellar/openjdk/25.0.1/libexec/openjdk.jdk/Contents/Home"

# Set the oh-my-zsh config path
# https://github.com/ohmyzsh/ohmyzsh#custom-directory
export ZSH="$HOME/.config/oh-my-zsh"

# Add custom scripts to the path.
export PATH="$PATH:$HOME/.config/bin"

# Set helix as the default text editor.
export EDITOR="hx"

# Run slow commands if necessary
source ~/.config/rc/slow.sh

# Source the list of oh-my-zsh plugins
source ~/.config/rc/zsh_plugins.sh

# Source aliases for commonly used programs.
source ~/.config/rc/aliases/main.sh

# If Maestro is installed.
# https://maestro.mobile.dev/
# The recommended way to install Maestro is via a curl-bash script:
# curl -Ls "https://get.maestro.mobile.dev" | bash
export PATH="$PATH":"$HOME/.maestro/bin"


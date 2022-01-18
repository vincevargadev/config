# This is the only file to be sourced in your .xyzrc file (.bashrc, .zshrc).
#
# Everything else will be added by the source commands below.
#
# Assuming the config repository is in ~/.config, you can include this file
# by executing the following command:
# $ echo "source ~/.config/rc/main.sh" >> ~/.zshrc


_TODAY=$(date +'%Y-%m-%d')
_LAST_SYNCHRONIZED=$(cat ~/.config/last_synchronized.txt)
if [[ $_TODAY != $_LAST_SYNCHRONIZED ]];
then
  # Do these checks only once per day as they are a bit slow.

  # Check once a day whether the config folder is clean and it needs updating.
  if git -C ~/.config diff-index --quiet HEAD
  then
    echo "wdir clean"
    git -C ~/.config pull --ff-only
  else
    echo "Uncommitted changes in your config folder"
  fi 

  # Some ohmyzsh plugins are installed via brew, let's see if they are
  # installed on the machine that this script is running on.
  # "brew list" is not the fastest operation, so we do it no more often
  # than once a day.
  BREW_LIST=$(brew list -1);
  if echo $BREW_LIST | grep --quiet "zsh-autosuggestions"
  then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  else
    echo "Install autosuggestions first with homebrew"
    echo "https://formulae.brew.sh/formula/zsh-autosuggestions"
    echo "$ brew install zsh-autosuggestions"
  fi
  
  if echo $BREW_LIST | grep --quiet "zsh-syntax-highlighting"
  then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  else
   echo "Install autosuggestions first with homebrew"
   echo "https://formulae.brew.sh/formula/zsh-autosuggestions"
   echo "https://formulae.brew.sh/formula/zsh-syntax-highlighting"
   echo "$ brew install zsh-syntax-highlighting"
 fi

 echo $_TODAY > ~/.config/last_synchronized.txt
fi

# Source the list of oh-my-zsh plugins
source ~/.config/rc/zsh_plugins.sh

# Source aliases for commonly used programs.
source ~/.config/rc/aliases/main.sh


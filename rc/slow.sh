_TODAY=$(date +'%Y-%m-%d')
_LAST_SYNCHRONIZED=$(cat ~/.config/last_synchronized.txt)
if [[ $_TODAY != $_LAST_SYNCHRONIZED ]];
then
  # Do these checks only once per day as they are a bit slow.

  # Check once a day whether the config folder is clean
  # and whether it needs updating.
  if git -C ~/.config diff-index --quiet HEAD
  then
    echo "Config folder is clean. Pulling..."
    git -C ~/.config pull --ff-only
  else
    echo "There are uncommitted changes in your config folder."
    echo "The latest configs could not be pulled."
    echo ""
    echo "To fix this, open the config folder, clean up and pull manually."
    echo "\$ cd ~/.config"
    echo "\$ git status # Then commit, stash or restore"
    echo ""
  fi 

 echo $_TODAY > ~/.config/last_synchronized.txt
fi


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
    echo "Uncommitted changes in your config folder"
  fi 

 echo $_TODAY > ~/.config/last_synchronized.txt
fi


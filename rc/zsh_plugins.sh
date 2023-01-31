# Disable the plugins that you don't regularly need by "#".
plugins=(
  ### Git, GitHub ###
  git
  gh

  ### Flutter and Dart ###
  # TODO: Create Dart zsh Plugin
  flutter

  ### Rust ###
  rust

  ### Node.js ###
  # node
  # npm
  # yarn
  # npx
  # nvm

  ### Go ###
  # golang

  ### Python ###
  # python
  # pep8

  ### Kubernetes, Docker, etc ###
  # docker
  # docker-compose
  # docker-machine
  # kubectl
  # gcloud
  # terraform

  ### Other tools ###
  # fzf
)

if ! source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh;
then
  echo "Install autosuggestions first with homebrew"
  echo "https://formulae.brew.sh/formula/zsh-autosuggestions"
  echo "$ brew install zsh-autosuggestions"
fi

if ! source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh;
then
  echo "Install autosuggestions first with homebrew"
  echo "https://formulae.brew.sh/formula/zsh-syntax-highlighting"
  echo "$ brew install zsh-syntax-highlighting"
fi


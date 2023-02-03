alias hh=hx
# alias hhc=hx ~/.config
# alias hhz=hx ~/.zshrc

alias hhc=_open_config_folder
_open_config_folder() {
  hx ~/.config/ +':cd %:h'
}


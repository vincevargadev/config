alias hh=hx
# alias hhc=hx ~/.config
# alias hhz=hx ~/.zshrc

alias hhc=_open_config_with_helix
_open_config_with_helix() {
  hx ~/.config/ +':cd %:h'
}


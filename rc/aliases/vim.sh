alias oldvim=vim
alias vim=nvim
alias v=nvim

# TODO: Make sure NERDTree also opens when this command is executed
alias vc=_open_config_with_nvim
_open_config_with_nvim() {
  nvim ~/.config/ +':cd %:h'
}

alias vz=_open_zshrc
_open_zshrc() {
  nvim ~/.zshrc +':cd %:h'
}

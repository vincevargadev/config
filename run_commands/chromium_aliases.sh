# Aliases to launch Chromium
alias c=chromium_wrapper
alias cgh=chromium_github
alias cpd=chromium_pubdev
alias cyt=chromium_youtube
alias cgo=chromium_google
# Aliases to launch Chromium in "app" mode (no nav bar, etc...)
alias ca=chromium_app_wrapper
alias cagh=chromium_app_github
alias capd=chromium_app_pubdev
alias cayt=chromium_app_youtube
alias cago=chromium_app_google

# TODO: These functions could be probably cleaned up,
# but I'm not a .sh wizard.
# PRs with improvements are welcome!
chromium_wrapper() {
  local url="$1"
  shift 1
  nohup chromium https://$url "$@" > /dev/null 2>&1
}

chromium_github() {
  nohup chromium https://github.com/$1 > /dev/null 2>&1
}

chromium_pubdev() {
  nohup chromium https://pub.dev/packages/$1 > /dev/null 2>&1
}

chromium_youtube() {
  local search=$(echo "$@" | tr " " "+")
  nohup chromium "https://www.youtube.com/results?search_query=$search" > /dev/null 2>&1
}

chromium_google() {
  local search=$(echo "$@" | tr " " "+")
  nohup chromium "https://www.google.com/search?q=$search" > /dev/null 2>&1
}

chromium_app_wrapper() {
  local url="$1"
  shift 1
  nohup chromium --app=https://$url "$@" > /dev/null 2>&1
}

chromium_app_github() {
  nohup chromium --app=https://github.com/$1 > /dev/null 2>&1
}

chromium_app_pubdev() {
  nohup chromium --app=https://pub.dev/packages/$1 > /dev/null 2>&1
}

chromium_app_youtube() {
  local search=$(echo "$@" | tr " " "+")
  nohup chromium --app="https://www.youtube.com/results?search_query=$search" > /dev/null 2>&1
}

chromium_app_google() {
  local search=$(echo "$@" | tr " " "+")
  nohup chromium --app="https://www.google.com/search?q=$search" > /dev/null 2>&1
}


# TODO(parnurzeal): How can I make the following checkings as a plugin?
if [[ -n "$OS_OSX" ]]; then
  # https://github.com/tmux/tmux/issues/108
  tmux set -g status-interval 0
  # OSX: sublime
  alias subln="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -n"
fi

# stop caching for completion in zsh
zstyle ":completion:*:commands" rehash 1

# setopt for # bash-comment style
setopt interactivecomments

# TODO(parnurzeal): check if this is working in Linux
alias g++="g++ -std=c++11"
alias g++2="g++-4.9 -std=c++11"

# Node.js
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

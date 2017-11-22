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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# gcloud
[[ -s "$HOME/google-cloud-sdk" ]] && source "$HOME/google-cloud-sdk/completion.zsh.inc"
[[ -s "$HOME/google-cloud-sdk" ]] && source "$HOME/google-cloud-sdk/path.zsh.inc"

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" || echo "No iTerm's shell integration installed"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

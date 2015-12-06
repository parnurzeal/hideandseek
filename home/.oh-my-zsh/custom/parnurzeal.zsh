case ${OSTYPE} in
  darwin*)
    echo "I am MacOSX"
    # https://github.com/tmux/tmux/issues/108
    tmux set -g status-interval 0
    ;;
  linux*)
    echo "I am linux"
    ;;
esac

# RHome path
export PATH="$PATH:/Users/teerapol.watanavekin/.usefulscript"
# sublime
alias subln="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -n"

hash -d gomysrc="$GOPATH/src/github.com/parnurzeal"
hash -d interview="/Users/ParNurZeal/PlayGround/interview"

# stop caching for completion in zsh
zstyle ":completion:*:commands" rehash 1

# setopt for # bash-comment style
setopt interactivecomments

alias g++="g++ -std=c++11"

# Set my main git user
if [[ -f "$HOME/.at_google" ]]; then
  git config --global user.name "Theeraphol Wattanavekin"
  git config --global user.email "twattanavekin@google.com"
else
  git config --global user.name "parnurzeal"
  git config --global user.email "parnurzeal@gmail.com"
fi

# Set ghq path
if [[ -f "$HOME/.on_gmac" ]]; then
  git config --global ghq.root "/Users/twattanavekin/PlayGround/ghq"
elif [[ -f "$HOME/.on_goobuntu" ]]; then
  git config --global ghq.root "/usr/local/google/home/twattanavekin/PlayGround/ghq"
else
  git config --global ghq.root "/Users/ParNurZeal/PlayGround/ghq"
fi

# Golang
if [[ -f $HOME/.on_goobuntu ]]; then
  export GOROOT=/usr/lib/google-golang
else
  export GOROOT=/usr/local/go
fi
export GOPATH=$HOME/PlayGround/ghq
export GOBIN=$GOPATH/gobin
export PATH=$PATH:$GOROOT/bin:$GOPATH/gobin

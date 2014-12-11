# RHome path
export PATH="$PATH:/Users/teerapol.watanavekin/.usefulscript"
# sublime
alias subln="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -n"
# Golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/Workspace/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

hash -d gorsrc="$GOPATH/src/rakuten"
hash -d gomysrc="$GOPATH/src/github.com/parnurzeal"
hash -d interview="/Users/ParNurZeal/Playground/interview"

# stop caching for completion in zsh
zstyle ":completion:*:commands" rehash 1

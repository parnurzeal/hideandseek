# RHome path
export PATH="$PATH:/Users/teerapol.watanavekin/.usefulscript"
# sublime
alias subln="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -n"
# Golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/Workspace/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

hash -d gomysrc="$GOPATH/src/rakuten"
hash -d gorsrc="$GOPATH/src/github.com/parnurzeal"

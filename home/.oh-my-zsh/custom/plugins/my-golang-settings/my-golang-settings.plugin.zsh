# Golang
echo "Set GOROOT to ${GOLANG_ROOT}"
export GOROOT=${GOLANG_ROOT}
export GOPATH=$HOME/PlayGround/ghq
export GOBIN=$GOPATH/gobin
export PATH=$PATH:$GOROOT/bin:$GOPATH/gobin
# Shortcut to my golang repo
hash -d gomysrc="$GOPATH/src/github.com/parnurzeal"



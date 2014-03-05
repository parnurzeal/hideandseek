[[ -s ~/.bashrc ]] && source ~/.bashrc

eval "$(rbenv init -)"

#export http_proxy="http://dev-proxy.db.rakuten.co.jp:9501"

##
# Your previous /Users/teerapol.watanavekin/.bash_profile file was backed up as /Users/teerapol.watanavekin/.bash_profile.macports-saved_2013-05-19_at_02:28:01
##

# MacPorts Installer addition on 2013-05-19_at_02:28:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# color your terminal
export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=GxFxCxDxBxegedabagaced

export GREP_OPTIONS='--color=auto'


export PATH=$PATH:/Users/teerapol.watanavekin/.usefulscript

# add mysql path and alias
export PATH=$PATH:/usr/local/mysql/bin 
alias mysqlstart='sudo /Library/StartupItems/MySQLCOM/MySQLCOM start'
alias mysqlstop='sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop'

# add for go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/Users/teerapol.watanavekin/myPlayGround/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin

export PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \[\`if [ \$? = 0 ]; then echo -e '\e[01;32m\]:)'; else echo -e '\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[0m\] "

alias subln="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -n"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile

# excuberant ctags
alias ctags=/usr/local/Cellar/ctags/5.8/bin/ctags

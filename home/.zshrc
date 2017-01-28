# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# Themes I like:  fino, sporty_256, rkj-repos, mira, crcandy, rgm, josh
ZSH_THEME="intheloop"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Set variable checker for cross-platform support
case ${OSTYPE} in
  darwin*)
    echo "I am OSX"
    OS_OSX=true
    if [[ -f "$HOME/.at_g" ]]; then
      AT_G=true
      G_OSX=true
    else
      A_OSX=true
    fi
    # Stop using KQueue because it is broken in OSX Sierra https://github.com/tmux/tmux/issues/475
    export EVENT_NOKQUEUE=1
    ;;
  linux*)
    echo "I am Linux"
    OS_LINUX=true
    if [[ -f "$HOME/.at_g" ]]; then
      AT_G=true
      G_LINUX=true
    else
      A_LINUX=true
    fi
    ;;
esac
# Default
GIT_USERNAME="parnurzeal"
GIT_EMAIL="parnurzeal@gmail.com"
GOLANG_ROOT=/usr/local/go
# Check if at G? not specific to OS.
if [[ -n "$AT_G" ]]; then
  GIT_USERNAME="twattanavekin"
  GIT_EMAIL="twattanavekin@google.com"
fi
# Check specific to OS
if [[ -n "$G_LINUX" ]]; then
  GOLANG_ROOT=/usr/lib/google-golang
fi

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bower my-golang-settings my-peco-directory my-git-config google-cloud)

source $ZSH/oh-my-zsh.sh

# User configuration
# TODO: Consolidate path in all OS
export PATH="$HOME/homebrew/bin:$HOME/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"

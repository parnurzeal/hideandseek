function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

function peco-playground () {
  local selected_dir=$(find ~/PlayGround -type d -maxdepth 1 -not -path "*/\.*" -not -path "*node_modules*" | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-playground
bindkey '^\' peco-playground

function peco-any () {
    local selected_dir=$(find . -path "./.git" -prune -o -name "*" -print | peco --query "$LBUFFER")
    if [ -d "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    elif [ -f "$selected_dir" ]; then
        #BUFFER="echo ${selected_dir} | xclip -d :0 -sel clip"
        BUFFER="$BUFFER ${selected_dir}"
    fi
    zle clear-screen
}

zle -N peco-any
bindkey '^[\' peco-any

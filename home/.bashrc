source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config
source ~/.bash/prompt

# homeshick setting
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick --quiet refresh 10

# load the path files
for file in ~/.addons/**/path.bash ; do
  source $file
done

# load the alias files
for file in ~/.addons/**/aliases.bash ; do
  source $file
done

# load everything.bash but path.bash & aliases.bash
for file in `find ~/.addons/**/*.bash -type f -not \( -iname "path.bash" -or -iname "aliases.bash"  \)` ; do
  source $file
done

# use .localrc for settings specific to one system
# for SECRET INFO you don't want to show in public, repo.
if [ -f ~/.localrc ]; then
    source ~/.localrc
fi



### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

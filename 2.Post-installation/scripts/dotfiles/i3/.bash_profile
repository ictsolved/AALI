#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#auto start X after login
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

export PATH="$PATH":"$HOME/.pub-cache/bin"

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem
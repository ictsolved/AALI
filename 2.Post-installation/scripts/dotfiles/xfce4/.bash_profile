# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

#Auto Start X After Login
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

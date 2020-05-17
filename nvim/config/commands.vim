"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
"                               Neovim Commands                                "
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

command! RmTrail %s/\s\+$//e
command! Breakline :g/^/norm gww
command! Term call ToggleTerm('zsh')
command! Lazygit call ToggleTerm('lazygit')

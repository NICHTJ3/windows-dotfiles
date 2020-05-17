# ZSHENV
#
# PATH {{{
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/.gem/bin" ] && PATH="$HOME/.gem/bin:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/share/cargo/bin" ] && PATH="$HOME/.local/share/cargo/bin:$PATH"
[ -d "$HOME/.local/share/npm/bin" ] && PATH="$HOME/.local/share/npm/bin:$PATH"
[ -d"$HOME/.deno" ] && PATH="$HOME/.deno/bin:$PATH"
# }}}

# Enviroment variables {{{
export EDITOR="nvim"
export BROWSER="/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe"
export GEM_HOME="$HOME/.gem"
export BASE16_SHELL="$HOME/.config/base16-shell/"
export DISABLE_LS_COLORS=true
export TERM=xterm-256color

# }}}

# Setup {{{
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
# }}}

# Aliases {{{
alias sudo='sudo ' #Allow sudo to use aliases
alias :q='exit'
alias open='explorer.exe'
alias chrome="/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe"
alias e='open'
alias ls='lsd'
alias gp='git push'
alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias cleanMem='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"'
alias vim='nvim'
alias vi='nvim'
alias :e='nvim'
alias tmux='~/bin/tmux-manager'
alias :q!='test -n "$TMUX" && \tmux kill-session'
alias :qa='test -n "$TMUX" && \tmux kill-window'
alias :sp='test -n "$TMUX" && \tmux split-window'
alias :vs='test -n "$TMUX" && \tmux split-window -h'
alias tmux-kill-and-set-host='\tmux kill-session -a;\tmux rename-session $HOST'
alias docker-clean='docker system prune -a'
alias mapDavidDrive='sudo mount -t cifs //desktop-dm7vasd/hosteddata $HOME/david -o user=op-vr'
alias cl='clear'
alias rmNodeModules="find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;"
# }}}

# Bindings {{{
# Ctrl x ctrl x opens vi with current command
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^x' edit-command-line
# }}}

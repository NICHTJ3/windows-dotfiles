# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Enable Powerlevel10k instant prompt.
[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] && \
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh_history"

source "$HOME/bin/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle docker
antigen bundle docker-compose
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle z
antigen bundle history-substring-search

antigen theme romkatv/powerlevel10k

antigen apply

# User configuration {{{
# Enable Vi mode
bindkey -v
export KEYTIMEOUT=1

# Make CTRL-Z background things and unbackground them.
function fg-bg() {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
  else
    zle push-input
  fi
}
zle -N fg-bg
bindkey '^Z' fg-bg
autoload -Uz compinit; compinit

# History search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Home End and Delete
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line
bindkey '^[[3~' delete-char
# }}}

# Programs and scripts {{{
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -d "$HOME/.fnm" ] && export PATH=/home/nichtj3/.fnm:$PATH
eval "`fnm env --multi`"
# }}}

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

compdef _tmux tmux-manager
compdef _tmux tmux

# fnm
export PATH=/home/nichtj3/.fnm:$PATH
eval "`fnm env --multi`"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

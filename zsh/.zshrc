# add scripts directory to PATH
FPATH="$HOME/.zfunc:$FPATH"

# turn off all beeps
unsetopt BEEP
# turn off autocomplete beeps
# unsetopt LIST_BEEP

# use the zsh completion system
autoload -Uz compinit && compinit

# autoload the all scripts ~/.zfunc directory
# . at the end limits to just files :t trims the path from the filename
autoload -U $fpath[1]/*(.:t)

# case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# custom prompt
PROMPT='%B%F{red}%n%F{green}@%F{blue}%m %F{green}%1~ %# %f%b'

# vi mode in the terminal
bindkey -v

# maintain a few old emacs keybindings
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# function for adding mode to the command line on the right size
function zle-line-init zle-keymap-select {
    INSERT_PROMPT="%B%F{yellow}-- INSERT --%f%b"
    NORMAL_PROMPT="%B%F{yellow}-- NORMAL --%f%b"

    RPS1="${${KEYMAP/vicmd/$NORMAL_PROMPT}/(main|viins)/$INSERT_PROMPT} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# for using `z`
. ~/.local/sh/z.sh

# aliases for color
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls -G'

# aliases for usability
alias xclip='xclip -selection clipboard'

# add color to man output
man() {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}


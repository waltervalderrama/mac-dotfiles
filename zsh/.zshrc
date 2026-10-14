# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If running inside Ghostty, use a terminfo with full color support
if [[ "$TERM_PROGRAM" == "Ghostty" || "$TERM_PROGRAM" == "ghostty" ]]; then
  export TERM=xterm-256color
fi

# ======================================
# EXECUTIONS
# --------------------------------------
# FASTFETCH
#fastfetch --config $HOME/.config/fastfetch/boxes_logo.jsonc
# fastfetch --config $HOME/.config/fastfetch/boxes_nologo.jsonc
# fastfetch --config $HOME/.config/fastfetch/boxes_logo_text_ansi_shadow.jsonc
# fastfetch --config $HOME/.config/fastfetch/boxes_logo_text_bloody.jsonc
# fastfetch --config $HOME/.config/fastfetch/boxes_logo_text_blurvision-ascii.jsonc
# ======================================


# Run fastfetch on shell startup, if installed (must be before oh-my-zsh / p10k)
if command -v fastfetch >/dev/null 2>&1; then
  fastfetch --pipe false  # force colors even when p10k instant prompt redirects output
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/waltervalderrama/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="apple"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo
	brew
	vim-interaction
	zsh-interactive-cd
	zsh-navigation-tools
	macports
	macos
	textmate
	pod
	forklift
	battery
	colored-man-pages
	cp
	history
	pip
	python
	nmap
	z
  gnu-utils
  ssh
  docker
  docker-compose
  ssh-agent
  rsync
  fzf
  web-search
  thefuck
  zsh-syntax-highlighting
	zsh-autosuggestions
  conda
	git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias ll="lsd -al"
#alias ls="lsd"
#alias cat="bat"

# bat
alias cat='bat'
alias catn='bat --style=plain'
alias catnp='bat --style=plain --paging=never'
 
# ls
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

alias fixaccents='defaults write -g ApplePressAndHoldEnabled -bool true && echo "Accent menu enabled. Restart apps to apply."'

# Show fastfetch once per interactive shell

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

######
#export DISPLAY=/private/tmp/com.apple.launchd.bvCTKCnYYw/org.xquartz:0
#antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle zsh-users/zsh-syntax-highlighting
source /Users/waltervalderrama/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/local/sbin:$PATH"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


. "$HOME/.local/bin/env"
## Init Zellij with every terminal
## eval "$(zellij setup --generate-auto-start zsh)"
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export C_INCLUDE_PATH="/usr/local/include:${C_INCLUDE_PATH}"
export LIBRARY_PATH="/usr/local/lib:${LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/python@3.13/bin:$PATH"
##if [ “$TERM_PROGRAM” == “ghostty” ]; then export TERM=xterm-256color; fi
#

# Use modern completion system
autoload -Uz compinit
compinit
 
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# macOS native ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

# Use the same colors for zsh completion
zstyle ':completion:*:default' list-colors \
  "di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
 
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Atuin Configs 
. "$HOME"/.atuin/bin/env
export ATUIN_NOBIND="true" 
eval "$(atuin init zsh)"
##bindkey '^r' _atuin_search_widget 
bindkey '^r' atuin-up-search-viins

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

. "$HOME/.atuin/bin/env"

export EDITOR=nvim
export VISUAL=nvim
export EDITOR=nvim
export VISUAL=nvim


# Added by Antigravity CLI installer
export PATH="/Users/waltervalderrama/.local/bin:$PATH"

# opencode
export PATH=/Users/waltervalderrama/.opencode/bin:$PATH


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/waltervalderrama/.cache/lm-studio/bin"
# End of LM Studio CLI section


# Added by Antigravity IDE
export PATH="/Users/waltervalderrama/.antigravity-ide/antigravity-ide/bin:$PATH"
export SSL_CERT_FILE=~/.certs/bundle.pem

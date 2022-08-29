#         __                                     __
#  ____  / /_     ____ ___  __  __   ____  _____/ /_
# / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
#/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
#\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
#                        /____/
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true


# history settings #
setopt hist_ignore_all_dups
setopt hist_ignore_space
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster" # set by `omz`
#ZSH_THEME="robbyrussell"		#ohmyzsh default

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

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


export RANGER_LOAD_DEFAULT_RC=FALSE

#homebrew path
#echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
## Example aliases
## alias zshconfig="mate ~/.zshrc"
## alias ohmyzsh="mate ~/.oh-my-zsh"
alias s='fastfetch | lolcat'
#alias s='neofetch --ascii /data/repo/ascii-art-neofetch/communist | lolcat'
alias vi='nvim'
alias vim='nvim'
alias v='nvim'
alias e='ranger'
alias ra='ranger'
alias cs='cowsay'
alias re='cd /data/repo/'
alias repo='cd /data/repo/'
#alias picom='nohup picom --config ~/.config/picom.jonaburg.conf -b --experimental-backends > /dev/null &'
alias picom='nohup picom --config ~/.config/picom.vanilla.conf -b --experimental-backends > /dev/null &'
#alias lunar='cd /data/lunar-linux/1.8;exec /bin/bash ./start.sh'
alias yesplaymusic='nohup /opt/YesPlayMusic/yesplaymusic > /dev/null &'
alias ':q'='exit'
alias smb='bash ~/scripts/smbmnt.sh'
alias lg='lazygit'
alias cb='xclip -selection clipboard'

#vi
bindkey -v
bindkey -M vicmd "r" vi-insert
bindkey -M vicmd "R" vi-insert-bol
bindkey -M vicmd "t" vi-add-next
bindkey -M vicmd "T" vi-add-eol
bindkey -M vicmd "^z" undo
bindkey -M vicmd "D" vi-forward-word
bindkey -M vicmd "A" vi-backward-word
bindkey -M vicmd "s" down-line-or-history
bindkey -M vicmd "w" up-line-or-history
bindkey -M vicmd "d" vi-forward-char
bindkey -M vicmd "a" vi-backward-char
bindkey -M vicmd "z" vi-find-next-char
bindkey -M vicmd "Z" vi-find-prev-char
bindkey -M vicmd "x" delete-word
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() {
	echo -ne '\e[5 q'
}
_fix_cursor() {
	echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)
KEYTIMEOUT=1

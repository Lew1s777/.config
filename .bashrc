#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
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
alias picom='nohup picom --config ~/.config/picom.jonaburg.conf -b --experimental-backends > /dev/null &'
#alias picom='nohup picom --config ~/.config/picom.vanilla.conf -b --experimental-backends > /dev/null &'
alias ':q'='exit'
alias lg='lazygit'

PS1='[\u@\h \W]\$ '

EDITOR=nvim
export EDITOR



#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Auto start tbsm only on tty1
if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
   exec tbsm
fi
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

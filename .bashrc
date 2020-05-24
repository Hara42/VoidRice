 #~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.profile
#export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
#export PS1="[\[\e[31m\]\u\[\e[m\]@\h \W]>>> "


function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt




export HISTCONTROL=ignoredups

set -o vi

shopt -s autocd

shopt -s checkwinsize

# Add Color
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Highlight desired sequence

#XBPS
alias xi='sudo xbps-install -S'
alias xr='sudo xbps-remove'
alias xq='sudo xbps-query'

# Shortcuts
alias sdn='sudo shutdown -P now'
alias reboot='sudo reboot'

alias vdwm='nvim ~/.config/dwm/config.h'
alias vdmenu='nvim ~/.config/dmenu/config.h'
alias vst='nvim ~/.config/st/config.h'

alias vvis='nvim ~/.config/vis/config'

alias vbrc='nvim ~/.bashrc'
alias vrc='nvim ~/.nvimrc'

alias mkdir='mkdir -p'
alias mkd='mkdir -p'
mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

alias mkdwm="cd ~/.config/dwm && sudo make clean install"
alias mkdmenu="cd ~/.config/dmenu && sudo make clean install"
alias mkst="cd ~/.config/st && sudo make clean install"

# Applications
alias sv='sudo nvim'
alias sr='sudo ranger'
alias v='nvim'
alias r='ranger'
alias nf='neofetch'

#Colorschemes and wallpaper
alias xwall="xwallpaper --center $1"

# Youtube
alias ytv="youtube-viewer --invidious"
alias ytx="youtube-dl -x"

# WiFi
alias showWifi='nmcli device wifi list'
alias wifiOn='nmcli radio wifi on'
alias wifiOff='nmcli radio wifi off'

connectWifi () {
    nmcli device wifi connect $1 password $2
}

connectHiddenWifi () {
    nmcli device wifi connect $1 password $2 hidden yes
}


# Printer
printer () {
    lpr -# $2 $1
}

scan () {
    scanimage  --device "pixma:04A9178A_7D664D" --format=$2 --output-file $1.$2 --progress
}

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

bindkey -v

# The following lines were added by compinstall
zstyle ':completion:*' menu select
zmodload zsh/complist
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)		# Include hidden files.


#zstyle :compinstall filename '/home/hara/.config/zsh/.zshrc'

#autoload -Uz compinit
#compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

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

alias vzrc='nvim ~/.config/zsh/.zshrc'
alias vrc='nvim ~/.config/nvim/init.vim'

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

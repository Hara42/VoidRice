#!/bin/zsh
# zsh profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="mupdf"
export FILE="ranger"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="$HOME/.local/tmp"

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export XAUTHORITY="${XDG_RUNTIME_DIR:-$HOME/.local/tmp}/Xauthority"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinitrc"

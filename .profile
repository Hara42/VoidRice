export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export TERMINAL="st"
export BROWSER="firefox"
export READER="st"
export FILE="ranger"

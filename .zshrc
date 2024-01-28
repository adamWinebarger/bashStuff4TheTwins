# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
zstyle :compinstall filename '/home/adam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

##Formatting Stuff
PS1='%B%F{green}%n@%m%f:%F{blue}%~%f%$ %b'
#PS1='%B%F{green}%n@%m:%~$ '
#PS1='%n@%m:%~$ '
PROMPT_EOL_MARK=''

## Sources right here
source ~/.customCommands.sh

##Aliases here
source ~/.aliases.sh

##Stuff to run LazyShell in the terminal
export OPENAI_API_KEY=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
[ -f ~/.lazyshell.zsh ] && source ~/.lazyshell.zsh

##Adds rust cargo to the environment variables so that we can call cargo from any terminal
. "$HOME/.cargo/env"

export PATH="$PATH":"$HOME/.pub-cache/bin"

#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

neofetch

[ -f "/home/adam/.ghcup/env" ] && source "/home/adam/.ghcup/env" # ghcup-env

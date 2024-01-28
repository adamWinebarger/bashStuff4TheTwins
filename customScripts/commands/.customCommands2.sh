#!/usr/bin/zsh

# zstyle :compinstall filename '/home/adam/.zshrc'
# autoload -Uz compinit
# compinit
# PS1='%B%F{green}%n@%m%f:%F{blue}%~%f%$ %b'

function set-title() {
        if [[ -z "$ORIG" ]]; then
                ORIG=$PS1
        fi

        #Bash case for title
        #TITLE="\[\e]2;$*\a\]"

        #zshell case
        TITLE="\[\e]2;$*\a"
        
        #This is how you would do it in bash
        #PS1=${ORIG}${TITLE}

        #For zshell
        echo -ne "\033]0;${ORIG}${TITLE}\a"
}

function up() {
        times=$1

        for x in {1..$times}; do
                cd ..
        done
}

function cdla() {
        array="${@}"

        cd "$array"
        ls -al --color=auto
}

function cdl() {
	array="${@}"

	cd "$array"
	ls -l --color=auto
}

function la() {
	ls -al --color=auto
}

function brave() {
        brave-browser ${@} & disown
}

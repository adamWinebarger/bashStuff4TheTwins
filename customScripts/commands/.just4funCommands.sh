#!/bin/bash

##Just for fun
function fortuneCow() {
	fortune -s | cowsay -f /home/linuxbrew/.linuxbrew/Cellar/cowsay/3.04_1/share/cows/default.cow
}

function 4tune() {
	fortune -s | cowsay -f /home/linuxbrew/.linuxbrew/Cellar/cowsay/3.04_1/share/cows/tux.cow
}

function fortuneKoala() {
	fortune -s | cowsay -f /home/linuxbrew/.linuxbrew/Cellar/cowsay/3.04_1/share/cows/koala.cow
}

function fortuneVK() {
	fortune -s | cowsay -f /home/linuxbrew/.linuxbrew/Cellar/cowsay/3.04_1/share/cows/vader-koala.cow
}

function climateTrail() {
	sh ~/ClimateTrail-2.1b-linux/ClimateTrail.sh & disown
	exit
}


##Functions for making/quick-changing directories

function cdir() {
	array="${@}"

	mkdir "$array"
	cd "$array"
}

function ccdir() {
	array="${@}"

	mkdir "$array"
	cd "$array"
}

function dc {
	cd ..
}

##Function to quick-change to documents
function docs() {
	cd ~/Documents
}

##Got lazy/tired of typing "sudo apt update", so...

function upd8() {
	sudo apt update
	#sudo pacman -Syu
}

##May as well make one for "sudo apt upgrade" too:
function upgr8() {
	sudo apt upgrade
	#sudo pacman -Syyu
}

##Quickly add fonts to /usr/share/fonts
function add2Fonts() {
	sudo unzip $1 -d /usr/share/fonts
}

##Goes to our fonts directory quickly
function go2Fonts() {
	cd /usr/share/fonts
}

##Function to quickly fix audio when we get that weird feedback
function fixAudio() {
	pulseaudio -k
}

##Open desktop files from terminal... may not work
function deskopen() {
	$(grep '^Exec' $1 | tail -1 | sed 's/^Exec=//' | sed 's/%.//' \
| sed 's/^"//g' | sed 's/" *$//g') &
}

##functions for finding stuff... since we use this particular command a lot

function findfind() {
	lookit="${@}"

	sudo find / -iname "$lookit"
}

function bigFind() {
	lookit="${@}"

	sudo find / -iname "*$lookit*"
}

##Apparently there's not a Gnome 40/arch setting to alphabatize apps
##... so here's this

function alphabatize() {
	gsettings reset org.gnome.shell app-picker-layout
}

##Function to open things like URLs and PDFs in a web browser
function openInWeb() {
	python3 -m webbrowser $1
}

function sortApps() {
	gsettings set org.gnome.shell app-picker-layout "[]"
}

function changeJava() {


	if ! [[ $1 =~ ?(-)+([:digit:]) ]] ; then
		sudo archlinux-java set "java-$1-openjdk"
	else
		echo "Invalid input"
	fi

}

function showNixApps() {
	ls ~/.nix-profile/share/applications
}
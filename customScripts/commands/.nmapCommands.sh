

function checkOS() {
	nmap -O "$1"
}

function checkProtocols() {
	nmap -sO "$1"
}

function checkUDP() {
	nmap -sU "$1"
}

function nmapScan() {
	nmap -n -sn "$1"
}
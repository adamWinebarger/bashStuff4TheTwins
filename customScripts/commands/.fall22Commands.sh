
alias kawa="~/kawa-3.1.1/bin/kawa"

function linearAlgebraTextbook() {
	sh "/home/adam/Documents/College Stuff/Fall 2022/Linear Algebra/textbook.sh" && disown && exit
}

function pictureFind() {

	lookit="${@}"
	arr=("jpg" "png" "svg") #Common picture types

	for item in "${arr[@]}"; do
		echo "*$lookit*.$item"
		sudo find / -iname "*$lookit*.$item"
	done
}
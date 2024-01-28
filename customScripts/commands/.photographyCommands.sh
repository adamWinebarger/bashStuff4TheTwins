
#This should tell us the count of any folder that we're in
function count() {

	set -- *
	echo "$#"
}

function fileCount() {

	find . -maxdepth 1 -type f | wc -l
}

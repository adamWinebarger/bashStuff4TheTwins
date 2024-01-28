function bigCatReviews() {

	cat "$1"_*.txt > "$1"starReviews.txt
}

function perlStop() {
	perl -lpe 'BEGIN{open(A,"stopwords.txt"); chomp(@k = <A>)} for $w (@k){s/\b\Q$w\E\b//ig}' $1 > $2

}

function catStop() {
	cat $1 | tr -d '[:punct:]' | tr -d '[:digit:]' > $2

}

function catList() {
	cat $1 | tr 'A-Z' 'a-z' | sed 's/--/ /g' | sed 's/[^a-z ]//g' | tr -s '[[:space:]]' '\n' | sort | uniq -c  | sort -nr  | head -7

}
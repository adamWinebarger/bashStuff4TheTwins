
##e-textbooks
wns=~/Documents/College\ Stuff/Winter\ 2022/Wireless\ Network\ Security

function computerOrg() {
	firefox /home/adam/Documents/College\ Stuff/Winter\ 2022/Computer\ Org\ and\ Assembly/Digital\ Design\ and\ Computer\ Architecture.pdf
}

function dscpp() {
	firefox /home/adam/Documents/College\ Stuff/Winter\ 2022/Data\ Structures\ \&\ Algorithms/DataStructures.pdf
}

function dsJava() {
	firefox /home/adam/Documents/College\ Stuff/Winter\ 2022/Data\ Structures\ \&\ Algorithms/Data-Structures-and-Algorithm-Analysis-in-Java-Addison-Wesley-2011--3rd-Edition-Mark-A.-Weiss.pdf
}

function giftOfFire() {
	firefox /home/adam/Documents/College\ Stuff/Winter\ 2022/Professional\ Responsibilities/A-Gift-of-Fire-4thEd-2012.pdf
}

function cwna() {
	firefox "$wns"/CWNA\ Certified\ Wireless\ Network\ Administrator\ Study\ Guide\ -\ 2018\ -\ Coleman\ -\ Front\ Matter.pdf & disown
}

function wnsBook() {
	firefox "$wns"/wireless-network-security-2nd.pdf & disown
}

function wnsFundamentals() {
	firefox "$wns"/book121004.pdf & disown
}


##Various java programs

function jls() {
	java -jar /home/adam/Documents/College\ Stuff/GVSU/Winter\ 2022/Computer\ Org\ and\ Assembly/JLS.jar & disown
	exit
}

function mars() {
	java -jar /home/adam/Documents/College\ Stuff/GVSU/Winter\ 2022/Computer\ Org\ and\ Assembly/Mars4_5.jar & disown
	exit
}

function jlsTest() {

	jls=$1 #The jls file
	javaF=$2 #The java/class file. Don't specify filetype here
	dlUnit=/home/adam/Documents/College\ Stuff/Winter\ 2022/Computer\ Org\ and\ Assembly/DLUnit.jar

	javac -cp "$dlUnit" "$2.java"
	java -jar "$dlUnit" $jls "$javaF.class"

}

function mipsTest() {

	munit=/home/adam/Documents/College\ Stuff/Winter\ 2022/Computer\ Org\ and\ Assembly/munit.jar
	ass=$1
	javaF=$2 #Be sure not to include filetype here

	javac -cp "$munit" "$2.java"
	java -jar "$munit" $ass "$javaF.class"
}

function SScpuTest() {

	dlUnit=/home/adam/Documents/College\ Stuff/Winter\ 2022/Computer\ Org\ and\ Assembly/DLUnit.jar
	jls=$1 #This shuold be the jls file
	ass=$2 #This is the .a file

	java -jar "$dlUnit" $jls builtin.SingleCycleCPUTest --param $ass

}

function cacheGrindTest() {

	valgrind --tool=cachegrind --D1=8192,1,$1 ./$2

}

function cacheGrind2() {

	valgrind --tool=cachegrind --D1=8192,1,$1 ./$2 2>output_$3.txt

}

cacheGrind3() {
	d1=$1
	ass=$2
	block=$3
	aout=$4
	txt=$5

	valgrind --tool=cachegrind --D1=$d1,$ass,$block ./$aout 2>$txt.txt
}

function problem4() {
	gcc $1 && cacheGrind2 32 a.out 32 && cacheGrind2 64 a.out 64
	subl output_32.txt && subl output_64.txt ls
}
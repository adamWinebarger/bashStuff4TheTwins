#! /usr/bin/gawk gawk -f

BEGIN {
	FS=","

	LENGTH=0

	sixCylCount=0
	TCOHEV=0 ##Total cost of hybrids or EV's
	ACOHEV=0 ##Average

	HEVLENGTH=0
}

{LENGTH=NR}
NR<2{next}

$6==6 {sixCylCount++}

$5=="electric" || $5=="hybrid" { TCOHEV+=$4 }
$5=="electric" || $5=="hybrid" { HEVLENGTH++}


END {
	
	ACOHEV = TCOHEV/HEVLENGTH

	printf("6 cylinder count = %s\n", sixCylCount)
	printf("average = %s\n", ACOHEV)
}


;Something about the ternary operator (?:)

#| in C this would look like

char* quality;
if (grade > 75) {
    quality = "good";
} else {
    quality = "bad";
}
printf("Your grade is %d is %s.\n", grade, quality);


More simply, using ternary operators
char *quality = (grade > 75) ? "good" : "bad";
printf("Your grade of %d is %s.\n", grade, quality);

...apparently scheme makes heavy use of the latter

Ternary operator works by evaluating the condition, then outputting the first value if true, second if false
|#

(define (gradeReport grade)
    (let 
        ((quality (if (> grade 75) "good" "bad"))) ;this is basically a ternary operator in shceme
        (display (format "Your grade is ~a\n" quality)) ;takes the value of quality and throws it into this string
    )
)

;(gradeReport 81)
;(gradeReport 66)

(define (numPlay num) 
    (if (> num 0) (+ num 5) (* num 2))
)

;(display (numPlay 10))
;(display (numPlay -15))

(define (assigneLetter grade) ;if/ else-if/else
    (cond 
        ((>= grade 90) "A")
        ((>= grade 80) "B")
        ((>= grade 70) "C")
        ((>= grade 60) "D")
        (else "F")
    )
)

(display (assigneLetter 94))
(newline)
(display (assigneLetter 84))
(newline)
(display (assigneLetter 74))
(newline)
(display (assigneLetter 64))
(newline)
(display (assigneLetter 54))
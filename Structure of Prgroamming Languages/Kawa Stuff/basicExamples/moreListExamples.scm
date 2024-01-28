;function that returns the largest integer in a list

(define (max lst)
    (if (null? (cdr lst)) (car lst)
        ( let ((rest (max (cdr lst))))  ;this is kind of like creating variables... bounding
            (if (> (car lst) rest) (car lst) rest)
        )
    )

    
)
; (display (max '(1 2 3 4 10 9 3 9)))
; (newline)

; (display (max '(1 2 3 4 10 9 3 11)))
; (newline)

; (display (max '(-1 -2 -3 -4 -10 -9 -3 -11)))
; (newline)

(define (second lst)
    (car (cdr lst))
)

;now here's a way of doing maximum shit with some more complex data-types
(define (winner lst)
    (if (null? (cdr lst))
        (car lst)
        (let ((rest (winner (cdr lst))))
            (if (> (second (car lst)) (second rest))
                (car lst)
                rest
            )
        )
    
    )

)

(display (winner '(("fred" 892) ("Barney" 795) ("Wilma" 707) ("Betty" 808))))
(newline)
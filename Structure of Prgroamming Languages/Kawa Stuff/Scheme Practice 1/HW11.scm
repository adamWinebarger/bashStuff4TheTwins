;cdr is data, car is next

(define (filter lst a b)
    (cond
        ((null? lst) ())
        ((> a 0) (filter (cdr lst) (+ a -1) (+ b -1)))
        ((>= a b) ())
        ((null? (cdr lst)) lst)
        (else (cons (car lst) (filter (cdr lst) a (+ b -1))))
    )

)

(define (length lst)
    (cond
        ((null? lst) 0)
        ((null? (cdr lst)) 1)
        (else (+ 1 (length (cdr lst))))
    )
)

(define (split-list lst index)

    (define size (length lst))
    (cons (filter lst 0 index) (list (filter lst index size)))

)

(display (split-list '(a b c d e f g) 7))
(newline)
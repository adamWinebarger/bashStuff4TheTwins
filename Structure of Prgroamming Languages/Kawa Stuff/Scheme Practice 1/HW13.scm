(define (split2 lst)
    (define size (length lst))
    (define halfsies (quotient (length lst) 2))
    (cons (filter lst 0 halfsies) (filter lst halfsies size))
)

(define (merge lst1 lst2)

    (cond 
        ((null? lst1)
            (if (null? lst2) () lst2)
        )
        ((null? lst2) lst1)

        (else
            (let (
                (h1 (car lst1))
                (h2 (car lst2)))

                (if (<= h1 h2)
                    (cons h1 (merge (cdr lst1) lst2))
                    (cons h2 (merge lst1 (cdr lst2)))
                )
            )
        )
    )

)

(define (merge-sort lst)
    ;(display lst)
    ;(newline)

    (cond
        ((null? lst) lst)
        ((null? (cdr lst)) lst)
        (else
            (let ((splt (split2 lst)))
                ;(display splt)
                ;(newline)
                (merge 
                    (merge-sort (car splt))
                    (merge-sort (cdr splt))
                )
            )
        )
    )

)

(display (merge-sort '(5 3 1 2 4)))
(newline)
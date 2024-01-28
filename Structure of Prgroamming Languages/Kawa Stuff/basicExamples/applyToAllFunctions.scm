(define (map fun lst)
    (cond
        ((null? lst) '()
        (else (cons (fun (car lst)) (map fun (cdr lst)))))
)) ;simple form of map apply-to-all function
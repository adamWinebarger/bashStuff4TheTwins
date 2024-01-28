;appending members of function would be something like this

(define (append list1 list2)
    (cond
        ((null? list1) list2) ;first condition used to terminate the recursive process if the first arg list is empty
        (else (cons (car list1) (append (cdr list1) list2)))))
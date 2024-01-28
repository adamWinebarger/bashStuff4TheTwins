(require 'list-lib)


;this should only be called for a list of exactly 2 elements so this should work
(define (smaller lst)
    (if (> (car lst) (car (cdr lst))) (car lst) (car (cdr lst)))
)

; (define (foldr lst index end)
;     (cond
;         ((or (null? lst) (null? cdr lst)) lst)
;         ((> ))
;     )
; )

; (define (foldList lst)
;     (cond 
;         ((or (null? lst) (null? (cdr lst))) lst)
;         ()
;     )

; )

(define (compare a b)
    (if (> a b) (cons a b)
    (cons b a))
)

(define (second-largest lst)

    (fold compare '() lst)
)

(display (second-largest '(1 2 4 3)))
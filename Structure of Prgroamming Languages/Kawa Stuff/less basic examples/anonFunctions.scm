;Notes on anonymous functions

;lambda is the keyword for anonymous functions

(map (lambda (item) (* item item)) '(1 2 3 4 5 6 7 8)) ;this will display in the live enviornment

;what is map doing?

;

; (map (lambda (item) 
;     (format "~a", "~a", (car (cdr item)) (car item)
;     '(("George" "Washington") ("John" "Adams") ("Thomas" "Jefferson")))

;perform an action on all elements of a list.
(define (myMap action lst)

    (if
        (null? lst)
        '()

        (if (null? action)
            'lst
            (cons (action (car lst)) (myMap action (cdr lst)))
        )
    )
)

;(display (myMap (lambda (item) (* item item)) '(1 2 3 4 5 6))) ;what the fuck even...
;(newline)

;function to select nth element of list, run it through an action, and then put it into a recursive piece.
(define
    (mySelect action lst) 
    ; (if (null? lst)
    ;     '()

    ;     ()
    (cond
        ((null? lst) '())
        ((action (car lst)) (cons (car lst) (mySelect action (cdr lst)))    )    ;why? Will either match this choice or pass it.
        (else (mySelect action (cdr lst)))

    )
)

;(display (mySelect (lambda (item) (< 0 item)) '(-2 3 -4 -5 6 7 8 9 -8 -10 12)))
;(newline)

(define (aboveThreshold threshold lst)

    (mySelect (lambda (item) (>= item threshold)) lst)
    
)

(display (aboveThreshold 10 '(1 11 8 9 19 21 22 9 87 6)))
(newline)
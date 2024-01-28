;If you just declare a data list the way you would a functional list,
; then kawa is going to assume that the first item is still a functional parameter
; this is how you would differentiate between the two of them

;basic
'(1 2 3 4 5)

;can be done with symbold
'(a b c d e)

;lists can take functional parameters and will store their outputs as a single output
(list 1 2 3 (+ 4 5) 6 7)

;but if you want the whole function and not just the output, then you gotta do it like this
'(1 2 3 (+ 4 5) 6 7)

;can also use the quote operator to denote every unbound symbol in a list
'('a 'b 'c 'd '(e f))

;worth noting that there are some things in the book/online documentation - in this case the "quote" operator.
;while these things may work with lisp/scheme, they wont work with kawa... that's going to make using the internet here a huge pain in the ass

;remember that car is data, cdr is next(). These can (not) be chained. they work in lisp/scheme but not in kawa

;displaying... a part of a list.

(define (get n lst)
    (if (null? lst) #f (if (>= 0 n) (car lst) (get (- n 1) (cdr lst))))
)

; (display (get 3 '(1 2 3 4 5 6 7)))
; (newline)

;apparently this is the correct way to append to a list if you want to do that
(append '(a b) '(c))

;for if you want to insert a value into the linked list... this will come in super handy when it comes to the Connect 4 assignment
(define (reset val n lst)
    (if (<= n 0)
        (cons val (cdr lst))
        (cons (car lst) (reset val (- n 1) (cdr lst)))
    )
)

(display (reset 'q 4 '(a b c d e f g)))
(newline)
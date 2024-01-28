;example of tail recursion

;the tail value of the recursive call is the return value of the nonrecursive call for the function

(define (member atm lst)
    (cond 
        ((null? lst) #F)
        ((eq? atm (car lst)) #T)
        (else (member atm (cdr lst)))
))

;factorial function using tail-recursion to achieve iterative imitation

(define (factorial n)
    (if (<= n 1)
    1
    (* n (factorial (- n 1)))
))

;can be rewritten with a helper function for better efficiency

(define (factHelper n factpartial)
    (if (<= n 1)
        factpartial
        (factHelper (- n 1) (* n factpartial))
        ))

(define (factorial2 n)
    (factHelper n 1) 
    ;in doing factorial this way, the result is computed as the recursion unwinds rather than right at the end
) 
;this makes it so that only one call is needed rather than n-1


;member function
(define (member atm lst) ;function definition with input params
    (cond ;start of condition list
        ((null? lst) #F)    ;null condtion
        ((eq? atm (car lst)) #T) ;check equivelency condition... wouldn't we want to use eqv here though?
        (else (member atm (cdr lst))) ;recursive call if neither of the other two conditions are met
))

(define (fun2 a b) ;note that there isn't the C order to functions in this so we can put our functions basically wherever and call them from wherever... dope
    (fun1 b a)
)

(define (fun1 a b)
    (display a )
    (display " ")
    (display b)
    (newline)
)

(fun2 6 7)
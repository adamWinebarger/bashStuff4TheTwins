;celsius to farenheit converter

(define (c2f c) (+ (* c (/ 9.0 5.0)) 32))

(display (c2f 100))
(display "\n")
(display (c2f 0))
(display "\n")
(display (c2f 40))
(display "\n")
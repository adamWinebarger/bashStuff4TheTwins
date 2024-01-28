
;for f(x)
(define (f x) (* 3 x))

;for g(x)
(define (g x) (+ 2 x))

;f(g(x)) can be written a few different ways

;traditionally

(define (h x) (+ 2 ( * 3 x)))

;using compose and lambda

(define (h2 f g) (lambda (x) (f (g x))))


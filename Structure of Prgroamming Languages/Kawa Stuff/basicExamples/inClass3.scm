
;farenheit to celsius converter
(define (f2c f) (* (- f 32) (/ 5 9)))

;Distance between 2 points on a 2d plain
; formaula sqrt((x2 - x1) ** 2 - (y2 - y1) ** 2)

(define (distBetweenstPoints x1 y1  x2 y2) 

    (sqrt (+ (expt (- x2 x1) 2) (expt (- y2 y1) 2))

))

(define (dist2 x1 y1 x2 y2)
    (let
        (
            (diffx (- x2 x1))
            (diffy (- y2 y1)) ;so these declarations can't be dependent on variables declared earlier in the let... fuck
        )

        (sqrt (+ (expt diffx 2) (expt diffy 2)))
    )
    
)

;(display (format "~a\n" (f2c 212)))
;(display (format "~a\n" (f2c 32)))

;(display (format "~a\n" (distBetweenstPoints 5.0 5.0 6.0 6.0)))
;(display (format "~a\n" (dist2 5.0 5.0 6.0 6.0)))

;some conditoinal functions

(define (commisionCalc sale)
    (cond
        ((> sale 10000) 
            (+ (* sale 0.1) (* (- sale 10000) 0.05))
        )
        (else (* sale 0.1))

    
    )
)

;(display (format "~a\n" (commisionCalc 15000)))

;Two types of quadrant functions that use conditional statements to determine the point on a graph

(define (quadrant x y)

    (cond
        ((< x 0)
        (cond 
            ((< y 0) 3)
            (else 1)
        )
        )
        (else
            (cond 
                ((< y 0) 4)
                (else 2)
            )
        )
    )
)

(define (quadrant2 x y)

    (cond
        ((and (< y 0) (< x 0)) 3)
        ((and (>= y 0) (< x 0)) 1)
        ((and (>= y 0) (>= x 0)) 2)
        (else 4)
    )

)

;(display (format "~a\n" (quadrant -1 1)))

(define (logFunc input)

    (cond 
        ((< 1 input) (+ 1 (logFunc (truncate (/ input 2)))))
        (else 0)
    )

)

;(display (format "~a\n" (logFunc 128)))

(define (count-up from to)
    (cond
        ((<= from to)
            (display (format "~a\n" from))
            (count-up (+ from 1) to)
        )
    )
)

(define (countUp2 from to) 
    (cond 
        ((<= from to)
            (list (from (countUp2 (+ from 1) to)))
        ) 
    )
)

;(count-up 2 5)

;(display "~a\n" (countUp2 2 8))

;rectangle function

;so we would want to print $width number of asterisks if we were on lines 0 or $(height - 1)
; and asterisks at column 0 and $(width - 1) on all other lines.


;divMod function
(define (divMod dividend divisor)
    (define (divModHelper dividend divisor quotient)
        (if (< dividend divisor)
            (list quotient dividend)
            (divModHelper (- dividend divisor) divisor (+ 1 quotient))
        )
    )
    (divModHelper dividend divisor 0)
)

;(display (divMod 17 5))
;(display "\n")

(define (length lst)
    (if (null? lst) 0 (+ 1 (length (cdr lst))))
)

(define (count lst item)
    (cond ((= 0 (length lst)) (0))  
        ((= (car lst) item) (+ 1 (count (cdr lst) item)))
        (else (+ 0 (count (cdr list) item)))
    )

)

;(define sampleList (cons 'apple banana apple orange apple somethingElse fish bicycle))

(define (append l1 l2)
    (if (null? l1) l2
        (cons (car l1) (append (cdr l1) l2))
    )
)

(define (insert item x lst)
    (if (= x 0)
        (cons item lst)
        (cons (car lst) (insert item (- x 1) (cdr lst)))

    )
)


(insert 'x 3 '(a b c d e f g))

(define (reverse lngth lst)
    ;need to throw a  sort of temporary variable/pointer into the mix so that we can swap the value of one to the temp
    ;swap the value of 2 to the location of 1, and then swap the value at temp to the location of 2.

    ;But how would we do this? and furthermore, would we then recursively call the function using... car of the list and 
    ;length minus 2?

    (cond
        ((or (null? lst) (= 0 lngth) (= 1 lngth)) lst) 

        ;next we need to figure out how to car length-1 times to get the back side of the list and then assign its
        ;value to a temporary location
        ( else (append (reverse (cdr list) (- lngth 1)) (car list)))

    )


)
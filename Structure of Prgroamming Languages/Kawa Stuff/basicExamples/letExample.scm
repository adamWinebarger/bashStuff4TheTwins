;example of using let to simplify things

;funcitonal representation of -b +/- sqrt(b ** 2 / (4 * a * c)) / 2a

(define (quadraticRoots a b c)
    (let ((disc (- (* b b) (* 4 a c))))
        (cond   ;;so this is kind of like a switch statement now
            ((< disc 0) ())
            ((= disc 0) (list (/ (- 0 b) (* 2 a))))
            (else
                (let (
                    (rootPartOver2a
                        (/ (sqrt disc) (* 2 a))) ; sqrt(b ** 2 / 4ac) /2a
                    (minusBover2a (/ (- 0 b) (* 2 a))) ; -b / 2a
                )
                    (list (+ minusBover2a rootPartOver2a) ;+
                        (- minusBover2a rootPartOver2a)) ;-
            )))
    )
)

;basic shit
;(* 5 (+ 6 7)) ; 5 * (6 + 7)

(display (format "~a\n" (quadraticRoots 1 0 0)))
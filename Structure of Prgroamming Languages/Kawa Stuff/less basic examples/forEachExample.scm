

(define (for-each from to action)

    (cond
        ((null? action) ()) ;do something for null, I guess
        ((<= to from) (action to))
        (else (action from) (for-each (+ from 1) to action))
    )

)

; (for-each 10 20 (lambda (iter) 

;     (display (format "~a\n" iter))

; ))

(define (reduce from to action partial)

    (if (<= from to)
        (reduce (+ 1 from) to action (action from partial))
        partial
    )

)

(display (reduce 10 20 (lambda (index partial) ;these guys might come in handy when it comes to generating the board... maybe
    (append partial (list (make-col 10)))
)
    '()
))
(newline) 

(define (make-col size)
    (reduce 1 size (lambda (index partial) (append partial (list -1))) '())
)

;Gonna be a lot of definition of functions where we're essentially passing functions within themselves. But functionalizing
; things should make things pretty easy especially since there's not really variables in this shit.
; 
;note that readline is our input function for kawa/scheme

;line & index vs row and column... So line x index y kinda shit
; 

(display "\n---------------\n Grid by colume: \n")
(for-each 0 (length (list-ref matrix 0)) (lambda (lin)

    (display-line line)

))
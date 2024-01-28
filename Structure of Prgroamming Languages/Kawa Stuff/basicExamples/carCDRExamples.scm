
((compose car cdr) '((a b) c d)) ; returns c, alternative to cadr

((compose cdr car) '((a b) c d)) ;returns b, alternative to cdar

(define (third aList)
    ((compose car (compose cdr car)) aList)) ;alternative to caddr


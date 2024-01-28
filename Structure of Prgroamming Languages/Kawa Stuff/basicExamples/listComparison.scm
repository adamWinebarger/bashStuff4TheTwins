
;program to determine if two simple lists are equal

(define (sListEq list1 list2)
(cond 
((null? list1) (null? list2)) ;  checks if list1 is null, compares null-ness of list2
((null? list2) #F)  ;checks if list2 is null when list 1 is not null
((eq? (car list1) (car list2))  ; checks equality of list1 and 2 by checking their locations in memory
    (sListEq (cdr list1) (cdr list2)))  ; does a recursive check of cdr for list 1 and 2
    (else #F)   ; returns false if the current references between list 1 and 2 are equal
))

;equality checking for complex lists
(define (compEqual list1 list2)
(cond
    ((not (list? list1)) (eq? list1 list2)) ;first two statments determine whether the input parameters are lists
    ((not (list? list2)) #F)
    ((null? list1) (null? list2)) ;second two determine whether the two lists are empty
    ((null? list2) #F)
    ((compEqual (car list1) (car list2)) ;this checks to see that the current items in each list are equal
        (compEqual (cdr list1) (cdr list2))) ;calls the function with the next links if the current are equal
    (else #F)   ;returns false otherwise
))



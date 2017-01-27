
(DEFINE (find-min L)
  
  (COND
   ((NULL? L) L)
   ;ignoring non integers
   ((NOT (number? (car L))) (find-min (cdr L)))
   ;preventing to compare a number with a non number 
   ((not(number? (find-min(cdr L)))) (car L))
   ;base case for returning
   ((NULL? (cdr L)) (car L))
   ;recursion to compare all elemtns in list 
   ((< (car L) (find-min (cdr L))) (car L))
   ;(display (car L))
   (else
    (find-min (CDR L)))
   )
  )

;(DEFINE list_max '())

;(DEFINE (find-max L min_num)
;        (COND
;         ((> (car L) min_num) (CONS (car l) list_max))
;         )
;        (display list_max)
;        )


;helper function to delete the number from a list 
(define (del List num)
  (cond
    ((null? List) List)
    ((not (number? (car List))) (del (cdr List) num))
    ((not (= num (car List))) (cons (car List) (del (cdr List) num)))
    ((= (car List) num) (del (cdr List) num))
    )
  )

        

;finding the minimum function 
(DEFINE (min-above-min L1 L2)
        (COND
         ;if the list1 is empty 
         ((NULL? L1) #F)
         ;if the list2 is empty
         ((NULL? L2) (find-min L1))
         ((> (find-min L1) (find-min L2)) (find-min L1))
         ;this function is called to delete the minimum of the list L1
         ;because it is not bigger than the smallest of L2
         (else (min-above-min (del L1 (find-min L1)) L2))
         )
        )

(DEFINE (find-min L)
  
  (COND
   ((NULL? L) 99999999999)
   ;ignoring non integers
   ((NOT (number? (car L))) (find-min (cdr L)))
   ;base case for returning
   ((NULL? (cdr L)) (car L))
   ;recursion to compare all elemtns in list 
   ((< (car L) (find-min (cdr L))) (car L))
   ;(display (car L))
   (else
    (find-min (CDR L)))
   )
  )

(DEFINE (min-above-min L1 L2)
        (COND
         ;if the list1 is empty 
         ((NULL? L1) #F)
         ;if the list2 is empty
         ((NULL? L2) (find-min L1))
         )
        )




 
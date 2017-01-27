
(define (find-min L)
  
  (COND
   ((NULL? L) 999999999)
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



 
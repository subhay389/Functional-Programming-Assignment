( define temp 0)
(define (min-track a)
  (define temp a)
  (display a)
  )

(define (find-min L)
  
  (COND
   ((NULL? L) '0)
   ;ignoring non integers
   ((not (number? (car L))) (find-min (cdr L)))
   ((number? (car L)))
   ;recursion to compare all elemtns in list 
   ((< (car L) (find-min (cdr L))) (car L))

    )
   (else
    (find-min (CDR L)))
   )
  )
  

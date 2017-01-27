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

    )
   (else
    (find-min (CDR L)))
   )
  )
  

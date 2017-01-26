
(define (sum-up-numbers-simple L)
  (COND
   ((NULL? L) 0)
   ((NUMBER? (car L)) (+ (car L) (sum-up-numbers-simple (cdr L))))
   (else (sum-up-numbers-simple (cdr L)))
   )
  )
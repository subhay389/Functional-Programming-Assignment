(define (sum-up-numbers-simple L)
  (COND
   ((NULL? L) 0)
   ((+ (car L) (sum-up-numbers-simple (cdr L))))
   )
  )

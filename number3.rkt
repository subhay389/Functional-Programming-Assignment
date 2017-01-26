
;final function to sum numbers
(define (sum-up-numbers-general L)
  (COND

   ((NULL? L) 0)
   
   ((NUMBER? (car L)) (+ (car L) (sum-up-numbers-general (cdr L))))
   ((list? (car l)) (+ (sum-up-numbers-general (car l) ) (sum-up-numbers-general (cdr l))))
   (else (sum-up-numbers-general (cdr L)))
   )
  )



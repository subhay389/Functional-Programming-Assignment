(* 3 3)

(define exponent
  2.718)

(define (expo)
  2.718)

(define (add x y)
  (+ x y))



(define (factorial x)
  (IF (= 0 x)
      1
      (* x (factorial (- x 1)))
      )
  )

(define (fib x)
  (COND
   ((= x 0) 0)
   ((= x 1) 1)
   ((> x 1) (+ (fib(- x 1)) (fib(- x 2))))
   (ELSE (DISPLAY "NOT VALID"))
   )
  )


   
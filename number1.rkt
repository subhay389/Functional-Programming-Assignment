;(* 3 3)

;(define (add x y)
;  (+ x y)
;  )
;
;

;(define (factorial x)
;  (IF (= 0 x)
;      1
;      (* x (factorial (- x 1)))
;      )
;  )
;
;
;(define (fib x)
;  (COND
;   ((= x 0) 0)
;   ((= x 1) 1)
;   ((> x 1) (+ (fib(- x 1)) (fib(- x 2))))
;   (ELSE (DISPLAY "NOT VALID"))
;   )
;  )
;
;(define (do list1 list2)
;  (CONS (CAR list1) list2)
;  (rev (CDR list1) list2)
;  )


;(define (rev list1 list2)
;  (COND
;   ((NULL? list1) list2)
;   (ElSE (do list1 list2)
;    )
;   )
;  )

;(define (test1 x)
;  (add x 3)
;  )

;(define (test list1)
;  (COND
;   ((NULL? list1) 1)
;   (ELSE (test1 5))
;   )
;  )

;(define (add x y)
;  (+ x y)
;  )

;test function for reversing the list only
(define (rev list1)
  (if (null? list1)
     '()
     (append (rev (cdr list1)) (list (car list1)))
  )
)


;final reverse function
(define (reverse-general L)
  (COND
   ((null? L)'())
   (ELSE
    (IF (LIST? (CAR L))
       (append (reverse-general (cdr L)) (list (reverse-general (car L))))
    (append (reverse-general (cdr L)) (list (car L)))))
   )
)


              
   
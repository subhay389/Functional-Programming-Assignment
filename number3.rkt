
;final function to sum numbers
(define (sum-up-numbers-general L)
  (COND
   ;when the list passed has no more elements left
   ((NULL? L) 0)
   ;if the first element of the list is a number
   ;add the first element and call the function recursively passing the remaining list
   ((NUMBER? (car L)) (+ (car L) (sum-up-numbers-general (cdr L))))
   ;if the first element if the list is a list
   ;add two recursively function passing the first elememtn and another with rest of the list without first element
   ((list? (car l)) (+ (sum-up-numbers-general (car l) ) (sum-up-numbers-general (cdr l))))
   ;if first element of list is neither list of number, pass the remaining part of list recursive function
   (else (sum-up-numbers-general (cdr L)))
   )
  )

 



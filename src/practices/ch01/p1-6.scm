(load "src/examples/ch01/p15-improve.scm")
(load "src/examples/ch01/p15-good-enough.scm")
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
		  (else else-clause)))

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		     guess
			 (sqrt-iter (improve guess x)
			 			x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

;(trace sqrt-iter)
;(display (sqrt 9))
(new-if #t (display "good") (display "bad"))
(exit)
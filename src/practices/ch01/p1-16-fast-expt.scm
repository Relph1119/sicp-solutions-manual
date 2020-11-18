(load "src/examples/ch01/p8-square.scm")

(define (fast-expt b n)
    (expt-iter b n 1))

(define (expt-iter b n a)
    (cond ((= n 0) a)
        ((even? n) (expt-iter (square b) (/ n 2) a))
        ((odd? n) (expt-iter b (- n 1) (* b a)))))
(load "src/examples/ch01/p38-sum.scm")

(define (pi-sum a b)
    (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
         a
         (lambda (x) (+ x 4))
         b))
(load "src/examples/ch01/p46-fixed-point.scm")
(load "src/examples/ch01/p48-average-damp.scm")

(define (sqrt x)
    (fixed-point (average-damp (lambda (y) (/ x y)))
                 1.0))
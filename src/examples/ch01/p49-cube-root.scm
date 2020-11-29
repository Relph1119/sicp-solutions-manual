(load "src/examples/ch01/p46-fixed-point.scm")
(load "src/examples/ch01/p48-average-damp.scm")
(load "src/examples/ch01/p8-square.scm")

(define (cube-root x)
    (fixed-point (average-damp (lambda (y) (/ x (square y))))
                 1.0))
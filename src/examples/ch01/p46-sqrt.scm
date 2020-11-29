(load "src/examples/ch01/p46-fixed-point.scm")
(load "src/examples/ch01/p15-average.scm")

(define (sqrt x)
    (fixed-point (lambda (y) (average y (/ x y)))
                 1.0))
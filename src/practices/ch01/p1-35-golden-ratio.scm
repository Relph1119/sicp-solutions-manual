(load "src/examples/ch01/p46-fixed-point.scm")

(define golden-ratio
    (fixed-point (lambda (x) (+ 1 (/ 1 x)))
                 1.0))
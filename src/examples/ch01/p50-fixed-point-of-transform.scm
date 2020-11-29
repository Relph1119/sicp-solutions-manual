(load "src/examples/ch01/p46-fixed-point.scm")

(define (fixed-point-of-transform g transform guess)
    (fixed-point (transform g) guess))
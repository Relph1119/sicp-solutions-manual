(load "src/examples/ch01/p15-average.scm")

(define (average-damp f)
    (lambda (x) (average x (f x))))
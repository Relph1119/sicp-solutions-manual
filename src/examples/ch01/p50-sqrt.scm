(load "src/examples/ch01/p49-newtons-method.scm")
(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p50-fixed-point-of-transform.scm")
(load "src/examples/ch01/p48-average-damp.scm")

(define (sqrt x)
    (newtons-method (lambda (y) (- (square y) x))
        1.0))

(define (sqrt x)
    (fixed-point-of-transform (lambda (y) (/ x y))
        average-damp
        1.0))

(define (sqrt x)
    (fixed-point-of-transform (lambda (y) (- (square y) x))
        newtons-transform
        1.0))
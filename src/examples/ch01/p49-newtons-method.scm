(load "src/examples/ch01/p49-deriv.scm")
(load "src/examples/ch01/p46-fixed-point.scm")

(define (newton-transform g)
    (lambda (x)
        (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
    (fixed-point (newton-transform g) guess))
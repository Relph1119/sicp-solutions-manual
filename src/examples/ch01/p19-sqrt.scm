(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p11-abs.scm")
(load "src/examples/ch01/p15-average.scm")

(define (sqrt x)
    (define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess x)
        (average guess (/ x guess)))
    (define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
    (sqrt-iter 1.0 x))
(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p11-abs.scm")
(load "src/examples/ch01/p15-average.scm")

(define (sqrt x)
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))
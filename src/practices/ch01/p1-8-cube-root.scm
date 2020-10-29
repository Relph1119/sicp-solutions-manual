(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p11-abs.scm")
(load "src/practices/ch01/p1-8-cube.scm")

(define (cube-root x)
    (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 
        0.001))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 
        3))
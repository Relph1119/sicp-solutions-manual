(load "src/examples/ch01/p15-improve.scm")
(load "src/practices/ch01/p1-7-good-enough.scm")

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))  ; 调用新的 good-enough?
        (improve guess x)
        (sqrt-iter (improve guess x)
                   x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

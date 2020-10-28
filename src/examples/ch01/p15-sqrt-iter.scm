(load "src/examples/ch01/p15-improve.scm")
(load "src/examples/ch01/p15-good-enough.scm")

;牛顿逼近法
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
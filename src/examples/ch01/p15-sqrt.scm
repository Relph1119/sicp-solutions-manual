(load "src/examples/ch01/p15-improve.scm")
(load "src/examples/ch01/p15-good-enough.scm")

;牛顿逼近法
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(display (sqrt 9))
(display "\n")
(display (+ 100 37))
(display "\n")
(display (+ (sqrt 2) (sqrt 3)))
(display "\n")
(square (sqrt 1000))
(exit)
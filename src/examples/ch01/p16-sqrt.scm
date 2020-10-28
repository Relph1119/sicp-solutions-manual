(load "src/examples/ch01/p15-sqrt-iter.scm")

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
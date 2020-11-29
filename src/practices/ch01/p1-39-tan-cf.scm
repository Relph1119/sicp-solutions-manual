(load "src/practices/ch01/p1-37-iter-cont-frac.scm")
(load "src/examples/ch01/p8-square.scm")

(define (tan-cf x k)
    (define (N i)
        (if (= i 1)
            x
            (- (square x))))
    (define (D i)
        (- (* i 2) 1))
    (exact->inexact (cont-frac N D k)))
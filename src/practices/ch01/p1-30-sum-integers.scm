(load "src/practices/ch01/p1-30-iter-sum.scm")

(define (sum-integers a b)
    (define (identity x) x)
    (define (inc n) (+ n 1))
    (sum identity a inc b))
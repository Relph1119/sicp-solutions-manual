(load "src/examples/ch01/p38-sum.scm")

(define (sum-integers a b)
    (define (identity x) x)
    (define (inc n) (+ n 1))
    (sum identity a inc b))
(load "src/practices/ch01/p1-33-coprime.scm")
(load "src/practices/ch01/p1-33-filtered-accumulate.scm")

(define (product-of-coprimes n)
    (define (term x) x)
    (define (next x) (+ x 1))
    (define (valid? x) (coprime? x n))
    (filtered-accumulate * 1 term 1 next n valid?))
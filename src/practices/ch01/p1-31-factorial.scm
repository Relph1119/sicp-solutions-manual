(load "src/practices/ch01/p1-31-rec-product.scm")

(define (factorial n)
    (define (term x) x)
    (define (next x) (+ x 1))
    (product term 1 next n))

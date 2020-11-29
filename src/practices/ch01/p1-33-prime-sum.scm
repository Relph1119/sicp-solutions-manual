(load "src/practices/ch01/p1-33-filtered-accumulate.scm")
(load "src/examples/ch01/p33-prime.scm")

(define (primes-sum a b)
    (define (term x) x)
    (define (next x) (+ x 1))
    (filtered-accumulate + 0 term a next b prime?))
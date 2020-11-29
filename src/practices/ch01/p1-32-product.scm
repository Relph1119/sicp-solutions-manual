(load "src/practices/ch01/p1-32-rec-accumulate.scm")

(define (product term a next b)
    (accumulate * 1 term a next b))
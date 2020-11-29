(load "src/practices/ch01/p1-31-rec-product.scm")
(load "src/practices/ch01/p1-31-numerator-term.scm")
(load "src/practices/ch01/p1-31-denominator-term.scm")

(define (pi n)
    (define (next n) (+ n 1))
    (* 4 
       (exact->inexact
           (/ (product numerator-term 1 next n)
              (product denominator-term 1 next n)))))
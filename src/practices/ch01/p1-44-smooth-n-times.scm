(load "src/practices/ch01/p1-44-smooth.scm")
(load "src/practices/ch01/p1-43-rec-compose-repeated.scm")

(define (smooth-n-times f n)
    ((repeated smooth n) f))
(load "src/practices/ch01/p1-43-rec-compose-repeated.scm")
(load "src/examples/ch01/p48-average-damp.scm")

(define (average-damp-n-times f n)
    ((repeated average-damp n) f))
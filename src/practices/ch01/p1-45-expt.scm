(load "src/practices/ch01/p1-43-rec-repeated.scm")

(define (expt base n)
    (if (= n 0)
        1
        ((repeated (lambda (x) (* base x)) n) 1)))

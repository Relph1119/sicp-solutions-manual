(load "src/practices/ch01/p1-42-compose.scm")

(define (repeated f n)
    (if (= n 1)
        f
        (compose f (repeated f (- n 1)))))
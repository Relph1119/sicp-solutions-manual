(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p33-divides.scm")

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
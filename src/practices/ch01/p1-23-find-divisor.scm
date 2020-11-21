(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p33-divides.scm")
(load "src/practices/ch01/p1-23-next.scm")

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))
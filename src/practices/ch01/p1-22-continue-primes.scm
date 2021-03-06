(load "src/examples/ch01/p33-prime.scm")
(load "src/practices/ch01/p1-22-next-odd.scm")

(define (continue-primes n count)
    (cond ((= count 0) (display "are primes."))
          ((prime? n)
           (display n)
           (cond ((> count 1) (display ","))
                 ((= count 1) (display " ")))
           (continue-primes (next-odd n) (- count 1)))
          (else (continue-primes (next-odd n) count))))
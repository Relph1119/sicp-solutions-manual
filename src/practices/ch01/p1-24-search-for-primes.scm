(load "src/practices/ch01/p1-22-search-for-primes.scm")
(load "src/examples/ch01/p34-fast-prime.scm")

(define (prime? n)
    (fast-prime? n 10))
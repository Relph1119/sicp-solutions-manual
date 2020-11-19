(load "src/practices/ch01/p1-22-continue-primes.scm")

(define (search-for-primes n)
    (define start-time (current-time))
    (continue-primes n 3)
    (display " *** ")
    (display (time-difference (current-time) start-time)))
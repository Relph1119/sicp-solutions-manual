(load "src/examples/ch01/p32-gcd.scm")

(define (coprime? a b)
    (and (< a b)
         (= 1 (gcd a b))))
(load "src/examples/ch01/p8-square.scm")

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder (square (expmod base (/ exp 2) m))
                     m))
          (else
           (remainder (* base (expmod base (- exp 1) m))
                     m))))
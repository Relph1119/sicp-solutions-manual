(load "src/examples/ch01/p30-fast-expt.scm")

(define (expmod base exp m)
    (remainder (fast-expt base exp) m))
(load "src/examples/ch02/p57-rat.scm")

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))
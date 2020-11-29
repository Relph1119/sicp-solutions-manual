(define (denominator-term x)
    (if (odd? x)
        (+ x 2)
        (+ x 1)))
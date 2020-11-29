(define (numerator-term x)
    (cond ((= x 1) 2)
          ((even? x) (+ x 2))
          (else (+ x 1))))
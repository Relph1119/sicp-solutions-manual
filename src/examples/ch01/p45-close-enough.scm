(define (close-enough? x y)
    (< (abs (- x y)) 0.001))
(define tolerance 0.00001)

(define (display-info guess step)
    (display "Step")
    (if (< step 10) (display "0"))
    (display step)

    (display " Guess: ")
    (display guess)
    (newline))

(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess step)
        (display-info guess step)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                (begin
                    (display-info next (+ 1 step))
                    next)
                (try next (+ 1 step)))))
    (try first-guess 1))
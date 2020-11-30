(load "src/practices/ch01/p1-45-expt.scm")
(load "src/practices/ch01/p1-45-average-damp-n-times.scm")
(load "src/examples/ch01/p46-fixed-point.scm")

(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (convergence? v0 v1 v2)
        (>= (/ (abs (- v1 v2)) (abs (- v0 v1))) 0.999999))
    (define (try guess)
        (let ((next (f guess)))
            (if (or (close-enough? guess next) (convergence? guess next (f next)))
                (convergence? guess next (f next))
                (try next))))
    (try first-guess))

(define (damped-nth-root n damp-times)
    (lambda (x)
        (fixed-point
            (average-damp-n-times
                (lambda (y)
                    (/ x (expt y (- n 1))))
                damp-times)
            1.0)))
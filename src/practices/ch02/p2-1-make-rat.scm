(load "src/examples/ch01/p32-gcd.scm")

(define (make-rat n d)
    (let* ((g (gcd n d))
        (n (/ n g))
        (d (/ d g)))
        (if (< d 0)
            (cons (- n) (- d))
            (cons n d))))
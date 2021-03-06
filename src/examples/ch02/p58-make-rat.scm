(load "src/examples/ch01/p32-gcd.scm")

(define (make-rat n d)
    (let ((g (gcd n d)))
        (cons (/ n g) (/ d g))))
(load "src/practices/ch01/p1-45-damped-nth-root.scm")

(define (find-damp-n x n)
    (define (iter m)
        (if ((damped-nth-root n m) x)
            (iter (+ m 1))
            (begin
                (display n)
                (display "-th-root, need ")
                (display m)
                (display " times average damp."))))
    (iter 1))
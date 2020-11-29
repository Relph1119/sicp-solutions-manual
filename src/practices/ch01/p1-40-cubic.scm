(load "src/practices/ch01/p1-8-cube.scm")
(load "src/examples/ch01/p8-square.scm")

(define (cubic a b c)
    (lambda (x) 
        (+ (cube x)
           (* a (square x))
           (* b x)
           c)))
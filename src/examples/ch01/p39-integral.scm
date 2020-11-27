(load "src/examples/ch01/p38-sum.scm")

(define (cube x) (* x x x))

(define (integral f a b dx)
    (define (add-dx x) (+ x dx))
    (* (sum f (+ a (/ dx 2.0)) add-dx b)
        dx))
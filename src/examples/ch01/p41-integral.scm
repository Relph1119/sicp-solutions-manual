(load "src/examples/ch01/p38-sum.scm")

(define (cube x) (* x x x))

(define (integral f a b dx)
    (* (sum f 
            (+ a (/ dx 2.0)) 
            (lambda (x) (+ x dx)) 
            b)
        dx))
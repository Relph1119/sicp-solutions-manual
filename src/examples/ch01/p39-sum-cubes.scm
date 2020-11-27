(load "src/examples/ch01/p38-sum.scm")

(define (sum-cubes a b)
    (define (inc n) (+ n 1))
    (define (cube x) (* x x x))
    (sum cube a inc b))
(load "src/examples/ch01/p8-square.scm")

(define (f x y)
    (let ((a (+ 1 (* x y)))
          (b (- 1 y)))
         (+ (* x (square a))
            (* y b)
            (* a b))))
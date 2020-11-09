(load "src/examples/ch01/p22-factorial.scm")

(define (pascal row col)
    (/ (factorial row)
       (* (factorial col)
          (factorial (- row col)))))
(load "src/examples/ch01/p8-square.scm")
(load "src/practices/ch01/p1-28-nontrivial-square-root.scm")

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((nontrivial-square-root? base m) 0) ;对非平凡平方根的检测
          ((even? exp)
           (remainder (square (expmod base (/ exp 2) m))
                     m))
          (else
           (remainder (* base (expmod base (- exp 1) m))
                     m))))
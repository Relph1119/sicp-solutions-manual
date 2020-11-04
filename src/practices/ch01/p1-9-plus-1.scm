(load "src/practices/ch01/p1-9-inc.scm")
(load "src/practices/ch01/p1-9-dec.scm")

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))
(load "src/practices/ch01/p1-17-double-and-halve.scm")

(define (* a b)
    (if (= b 0)
        0
        (+ a (* a (- b 1)))))

(define (multi a b)
    (cond ((= b 0) 0)
          ((even? b) (double (multi a (halve b))))
          ((odd? b) (+ a (multi a (- b 1))))))

(load "src/practices/ch01/p1-28-expmod.scm")
(load "src/practices/ch01/p1-28-non-zero-random.scm")

(define (miller-rabin-test n)
    (let ((times (ceiling (/ n 2))))
        (test-iter n times)))

(define (test-iter n times)
    (cond ((= times 0)
            #t)
          ((= (expmod (non-zero-random n) (- n 1) n)
              1)
            (test-iter n (- times 1)))
          (else
            #f)))
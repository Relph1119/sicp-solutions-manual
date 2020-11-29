(load "src/practices/ch01/p1-42-compose.scm")

(define (repeated f n)
    (define (iter i repeated-f)
        (if (= i 1)
            repeated-f
            (iter (- i 1)
                (compose f repeated-f))))    
    (iter n f))
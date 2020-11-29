(define (product term a next b)
    (define (iter a resule)
        (if (> a b)
            resule
            (iter (next a)
                  (* (term a) resule))))
    (iter a 1))
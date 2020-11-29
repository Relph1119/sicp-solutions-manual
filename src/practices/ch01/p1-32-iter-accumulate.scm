(define (accumulate combiner null-value term a next b)
    (define (iter a resule)
        (if (> a b)
            resule
            (iter (next a)
                  (combiner resule (term a)))))
    (iter a null-value))
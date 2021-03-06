(define (filtered-accumulate combiner null-value term a next b valid?)
    (define (iter i result)
        (cond ((> i b) result)
              ((valid? i) (iter (next i) (combiner result (term i))))
              (else (iter (next i) result))))
    (iter a null-value))
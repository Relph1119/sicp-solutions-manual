(define (filtered-accumulate combiner null-value term a next b valid?)
    (if (> a b)
        null-value
        (let ((rest-terms (filtered-accumulate combiner null-value term (next a) next b valid?)))
            (if (valid? a)
                (combiner (term a) rest-terms)
                rest-terms))))
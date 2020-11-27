;计算给定范围内的整数的立方之和
(define (cube x) (* x x x))

(define (sum-cubes a b)
    (if (> a b)
        0
        (+ (cube a) (sum-cubes (+ a 1) b))))
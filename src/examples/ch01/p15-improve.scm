;改进猜测的方法就是求出它与被开方数除以上一个猜测的平均值
(define (improve guess x)
    (average guess (/ x guess)))
(define (average x y)
    (/ (+ x y) 2))
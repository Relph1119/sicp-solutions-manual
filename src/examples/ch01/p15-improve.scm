(load "src/examples/ch01/p15-average.scm")
;改进猜测的方法就是求出它与被开方数除以上一个猜测的平均值
(define (improve guess x)
    (average guess (/ x guess)))

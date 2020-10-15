(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p11-abs.scm")
;牛顿逼近法
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
;改进猜测的方法就是求出它与被开方数除以上一个猜测的平均值
(define (improve guess x)
    (average guess (/ x guess)))
(define (average x y)
    (/ (+ x y) 2))
;“足够好”就是不断改进答案，直至它足够接近平方根，使得其平方与被开方数之差小于某个事先确定的误差值（这里用的是0.001）
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
(define (sqrt x)
    (sqrt-iter 1.0 x))

(display (sqrt 9))
(exit)
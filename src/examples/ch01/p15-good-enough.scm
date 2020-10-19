(load "src/examples/ch01/p8-square.scm")
(load "src/examples/ch01/p11-abs.scm")
;“足够好”就是不断改进答案，直至它足够接近平方根，使得其平方与被开方数之差小于某个事先确定的误差值（这里用的是0.001）
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
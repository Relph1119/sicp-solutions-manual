(load "src/examples/ch02/p57-rat.scm")

(define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                  (* (numer y) (denom x)))
                (* (denom x) (denom y))))

(define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                  (* (numer y) (denom x)))
                (* (denom x) (denom y))))

(define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
               (* (denom x) (denom y))))

(define (div-rat x y)
    (make-rat (* (numer x) (denom y))
               (* (denom x) (numer y))))

(define (equal-rat? x y)
    (= (* (numer x) (denom y))
       (* (numer y) (denom x))))
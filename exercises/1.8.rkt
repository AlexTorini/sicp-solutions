#lang racket

(require rackunit)

(define (cbrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cbrt-iter (improve guess x) guess
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square  guess)) (* 2  guess)) 3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) guess)) 0.00001))

(define (square x) (* x x))

(define (cbrt x)
  (cbrt-iter 1.0 0 x))

(cbrt 8)

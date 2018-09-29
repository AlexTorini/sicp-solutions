#lang racket

(require rackunit)

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess x) guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) guess)) 0.00001))

(define (square x) (* x x))

(define (my-sqrt x)
  (sqrt-iter 1.0 0 x))
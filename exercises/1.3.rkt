#lang racket

(require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-max-two-of-three a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< a b) (< c a)) (sum-of-squares a b))
        (else (sum-of-squares a c))))

(check-equal? (sum-of-squares-max-two-of-three 1 2 3) 13)
(check-equal? (sum-of-squares-max-two-of-three -100 -1 0) 1)
(check-equal? (sum-of-squares-max-two-of-three -1000 0 0) 0)
(check-equal? (sum-of-squares-max-two-of-three -1000 -5.5 100) 10030.25)
(check-equal? (sum-of-squares-max-two-of-three 3 3 3) 18)
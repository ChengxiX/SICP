#lang sicp
(load "square.rkt")
(define (iterative-improve-good good-enough? improve)
  (define (iter guess) (if (good-enough? guess) guess
                      (iter (improve guess))))
  (lambda (first-guess) (iter first-guess)))
(define (iterative-improve-close close-enough? improve)
  (define (iter guess last) (if (close-enough? guess last) last (iter (improve guess) guess)))
  (lambda (first-guess) (iter first-guess 0)))
(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2) (< (abs (- v1 v2)) tolerance))
  ((iterative-improve-close close-enough? f) first-guess))
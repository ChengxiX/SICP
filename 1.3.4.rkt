#lang scheme

(require "1.3.3.rkt")
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
(define dx 0.00001)
(define (deriv f) (lambda (x) (/ (- (f (+ x dx)) (f x)) dx)))
(define (newtons-transform g) (lambda (x) (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess) (fixed-point-of-transform g newtons-transform guess))
(provide newtons-method)
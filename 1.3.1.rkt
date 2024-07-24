#lang sicp
(load "square.rkt")
(define (sum term a next b)
  (if (> a b) 0
      (+ (term a) (sum term (next a) next b))))
(define (integral f a b dx)
  (* dx (sum f (+ a (/ dx 2.0)) (lambda (a) (+ a dx)) b)))
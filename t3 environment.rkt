#lang scheme
; (define (f x) (* x x))
(define (q x)
  (define * +)
  (define (f x) (* x x))
  (f x))
(q 4)
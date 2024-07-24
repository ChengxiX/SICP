#lang sicp
(load "square.rkt")
(define (double f) (lambda (x) (f (f x))))
(define (inc x) (+ 1 x))
((double inc) 2)
(((double (double double)) inc) 5) ; 2^4

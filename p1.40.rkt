#lang sicp
(load "square.rkt")
(load "1.3.4.rkt")
(define (cubic a b c) (lambda (x) (+ (expt x 3) (* a (square x)) (* b x) c)))
(newtons-method (cubic 2 5 5) 1.0)

#lang scheme

(require "1.3.4.rkt")
(define (cubic a b c) (lambda (x) (+ (expt x 3) (* a (sqr x)) (* b x) c)))
(newtons-method (cubic 2 5 5) 1.0)

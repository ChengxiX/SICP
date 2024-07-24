#lang sicp
(load "square.rkt")
(load "1.3.3.rkt")
(fixed-point (lambda (x) (+ (/ 1.0 x) 1)) 1)
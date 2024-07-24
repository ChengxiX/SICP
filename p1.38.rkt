#lang sicp
(load "square.rkt")
(load "p1.37.rkt")
(cont-frac-loop (lambda (i) 1.0) (lambda (i) (let ((a (/ (+ i 1) 3)))
                                 (if (integer? a) (* 2.0 a) 1.0))) 100)
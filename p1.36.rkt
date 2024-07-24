#lang scheme

(require "1.3.3.rkt")
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2)
(fixed-point (lambda (x) (/ (+ x (/ (log 1000) (log x))) 2)) 2)

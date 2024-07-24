#lang scheme

(require "p1.43.rkt")
(define (smooth f dx) (lambda (x) (/ (+ (f x) (f (- x dx)) (f (+ x dx))) 3)))

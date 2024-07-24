#lang sicp
(load "square.rkt")
(load "p2.33.rkt")
(define (count-leaves t)
  (accumulate + 0 (map (lambda (i) (if (pair? i) (count-leaves i) 1)) t)))
(count-leaves '((1 6) 2 (23 5 1) 4))
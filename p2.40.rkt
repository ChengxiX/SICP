#lang scheme

(require "p2.33.rkt")
(define (1-n n) (if (= n 1) (list 1) (cons n (1-n (- n 1)))))
(define (unique-pairs n)
  (accumulate (lambda (x y) (append (map (lambda (y) (cons x y)) (1-n x)) y)) nil (1-n n)))
;(unique-pairs 3)
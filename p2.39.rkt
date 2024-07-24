#lang sicp
(load "square.rkt")
(load "p2.38.rkt")
(define (reverse-r seq)
  (fold-right (lambda (x y) (append y (list x))) nil seq)) ; 用append是否合法？
(reverse-r '(1 2 3))
(define (reverse-l seq)
  (fold-left (lambda (x y) (cons y x)) nil seq))
(reverse-l '(1 2 3))
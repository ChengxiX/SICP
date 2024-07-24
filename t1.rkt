#lang sicp
(load "square.rkt")
(m f (n f x))
((m f) ((n f) x))

(define m (lambda (a) (lambda (b) ...)))
(define m (lambda (a b) ...))

; lisp 应该是自动科里化的
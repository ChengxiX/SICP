#lang scheme

(define (p) (p))
(if (= 1 1) #f (x)) ; 按顺序求值，不会求后面的
(define (test x y) (if (= x 0) 0 y))
(test 0 (p)) ; 正在求(x)再带入求好的值
; 用的是应用序

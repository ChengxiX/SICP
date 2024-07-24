#lang scheme

(require "p2.33.rkt")
(define (1-n n) (if (= n 1) (list 1) (cons n (1-n (- n 1)))))
(define (unique-pairs n)
  (accumulate (lambda (x y) (append (accumulate (lambda (y z) (if (= x y) z (cons (cons x y) z))) '() (1-n x)) y)) '() (1-n n)))
; 用函数定义流处理更优美
;(unique-pairs 3)
(provide accumulate 1-n)
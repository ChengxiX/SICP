(define (make-cycle-pair x)
  (define a (cons x '()))
  (set-cdr! a a)
  a)
(define b (make-cycle-pair 'a))
; x: #0=(a . #0#)

(load "p3.12.rkt")
(define (make-cycle x)
  (set-cdr! (last-pair x) x) x)
(define z (make-cycle (list 'a 'b 'c)))
; (last-pair z) 死循环
b
z
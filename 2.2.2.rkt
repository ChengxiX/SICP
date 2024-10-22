#lang scheme

(define (count-leaves li)
  (cond ((null? li) 0)
        ((pair? li) (+ (count-leaves (car li)) (count-leaves (cdr li))))
        (else 1)))
(define x '((1 2) 4 3))
; '((1 2) 4 3) = (list (list 1 2) 4 3)
(count-leaves x)
(cons x x)
(count-leaves (cons x x))
(equal? x (list (list 1 2) 4 3))
#lang scheme

(define (same-parity x . ys)
  (define check (if (odd? x) odd? even?))
  ;(define (iter ys res) (if (equal? ys '()) res ; 迭代是倒序
  ;                                (if (check (car ys)) (iter (cdr ys) (cons (car ys) res))
  ;                                    (iter (cdr ys) res))))
  (define (re ys) (if (null? ys) '() (if (check (car ys)) (cons (car ys) (re (cdr ys))) (re (cdr ys))))) ; lisp list的正确操作方法就是递归
  (cons x (re ys)))
(define (g . w) (display w))
(define h (lambda w (display w)))
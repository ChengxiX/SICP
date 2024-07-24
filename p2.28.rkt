#lang scheme

(define (append l1 l2) (if (null? l1) l2 (cons (car l1) (append (cdr l1) l2))))
(define (fringe items)
  (if (null? items) '() (if (list? (car items)) (append (fringe (car items)) (fringe (cdr items))) (cons (car items) (fringe (cdr items))))))
(define x '((1 2) (3 4)))
(fringe x)
(fringe (list x x))
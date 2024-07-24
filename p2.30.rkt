#lang scheme

(define (sqr-tree tree) ; 以嵌套列表的形式理解
  (if (null? tree) nil (if (pair? (car tree)) (cons (sqr-tree (car tree)) (sqr-tree (cdr tree))) (cons (sqr (car tree)) (sqr-tree (cdr tree))))))
(define (sqr-tree-t tree) ; 以树的形式理解
  (if (null? tree) nil (if (pair? tree) (cons (sqr-tree-t (car tree)) (sqr-tree-t (cdr tree))) (sqr tree))))
(define (sqr-tree-m tree)
  (if (pair? tree) (map sqr-tree-m tree) (sqr tree)))
(sqr-tree-m '(1 (2 (3 4) 5) (6 7)))
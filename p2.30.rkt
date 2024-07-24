#lang scheme
(define (square-tree tree) ; 以嵌套列表的形式理解
  (if (null? tree) '() (if (pair? (car tree)) (cons (square-tree (car tree)) (square-tree (cdr tree))) (cons (sqr (car tree)) (square-tree (cdr tree))))))
(define (square-tree-t tree) ; 以树的形式理解
  (if (null? tree) '() (if (pair? tree) (cons (square-tree-t (car tree)) (square-tree-t (cdr tree))) (sqr tree))))
(define (square-tree-m tree)
  (if (pair? tree) (map square-tree-m tree) (sqr tree)))
(square-tree-m '(1 (2 (3 4) 5) (6 7)))
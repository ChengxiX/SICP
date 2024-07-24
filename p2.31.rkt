#lang scheme

(define (tree-map f tree)
  (define (t-map tree)
    (if (pair? tree) (map t-map tree) (f tree)))
  (t-map tree)
  )
(tree-map sqr '(1 (2 (3 4) 5) (6 7)))
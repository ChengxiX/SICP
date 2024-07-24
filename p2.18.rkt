#lang scheme

(define (reverse li)
  (define (iter a res) (if (not (null? a)) (iter (cdr a) (cons (car a) res)) res))
  (iter li '()))
(reverse '(1 2 3 5 7))
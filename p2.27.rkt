#lang scheme
(define (deep-reverse li)
  (define (iter a res) (if (not (null? a)) (iter (cdr a) (cons (if (list? (car a)) (deep-reverse (car a)) (car a)) res)) res))
  (iter li '()))
(deep-reverse '((3 2) (4 1)))
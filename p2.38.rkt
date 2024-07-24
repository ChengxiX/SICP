#lang scheme
(define (fold-right op init seq)
  (define (iter seq res)
    (if (null? seq) res
        (iter (cdr seq) (op (car seq) res))))
  (iter seq init))

#lang scheme

(define (repeated f n)
  (define (iter m res) (if (= m 1) res (iter (- m 1) (lambda (x) (f (res x))))))
    (iter n f))
;((repeated sqr 2) 5)
(provide repeated)
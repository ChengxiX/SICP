#lang scheme
(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s)))) ; 递归在这里
        (append rest (map (lambda (a) (cons (car s) a)) rest)))))
; “原理和之前的找零程序是一样的，得到数学组合的书才有介绍”
(subsets '(1 2 3 4))
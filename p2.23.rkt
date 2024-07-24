#lang scheme
(define (for-each f li)
  (if (null? li) #t ((lambda () (f (car li)) (for-each f (cdr li))))))
(for-each (lambda (x) (newline) (display x)) '(57 312 55))
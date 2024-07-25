#lang scheme
(define (equal? a b)
  (cond ((and (pair? a) (pair? b))
         (cond ((and (pair? (car a)) (pair? (car b))) (and (equal? (car a) (car b)) (equal? (cdr a) (cdr b))))
               ((and (not (pair? (car a))) (not (pair? (car b)))) (and (eq? (car a) (car b)) (equal? (cdr a) (cdr b))))
               (else #f)))
        ((xor (pair? a) (pair? b)) #f)
        (else (eq? a b))))
  (equal? '(1 2 4 (1 4)) '(1 2 4 (1 5)))
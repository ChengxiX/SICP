#lang scheme

(define (last-pair li) (if (null? (cdr li)) li (last-pair (cdr li))))
(last-pair '(1 2 33 5 23))
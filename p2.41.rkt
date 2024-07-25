#lang scheme

(require "p2.40.rkt")
(define (tri-pairs n) (accumulate (lambda (x y) (append
                                                 (accumulate (lambda (a z) (if (= x a) z (append (accumulate (lambda (b c) (if (= b a) c (cons (list x a b) c))) '() (1-n a)) z))) '() (1-n x))
                                                 y)) '() (1-n n)))
(define (filter predicate seq)
  (accumulate (lambda (x y) (if (predicate x) (cons x y) y)) '() seq))
(define (sum=s n s)
  (filter (lambda (x) (= s (+ (car x) (cadr x) (caddr x)))) (tri-pairs n)))
(sum=s 5 8)
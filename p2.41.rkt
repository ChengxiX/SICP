#lang scheme

(require "p2.40.rkt")
(define (tri-pairs n) (accumulate (lambda (x y) (append
                                                 (accumulate (lambda (a z) (if (= x a) z (append (accumulate (lambda (b c) (if (= b a) c (cons (list x a b) c))) '() (1-n a)) z))) '() (1-n x))
                                                 y)) '() (1-n n)))
(tri-pairs 4)
#lang scheme
(define (make-f) (let ((a 0)) (lambda (n) (let ((b a)) (set! a n) b))))
(define f (make-f))
(+ (f 0) (f 1))
(set! f (make-f))
(+ (f 1) (f 0))
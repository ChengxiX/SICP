#lang scheme
(define (make-accumulator . x)
  (let ((a (if (and (pair? x) (number? (car x))) (car x) 0))) (lambda (add) (set! a (+ a add)) a)))
(define a (make-accumulator))
(a 1)
(a 4)
#lang scheme

(require "p2.33.rkt")
(define (horner-eval x coeff-seq)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* x higher-terms)))
                0
                coeff-seq))
(horner-eval 2 '(1 3 0 5 0 1))

#lang scheme
(define (double a) (* a 2))
(define (halve a) (/ a 2))
(define (times a b)
  (cond ((= b 1) a)
        ((even? b) (double (times a (halve b))))
        (else (+ (times a (- b 1)) a))
        )
  )
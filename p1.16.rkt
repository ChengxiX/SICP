#lang scheme

; 迭代 O(log n)
(define (fast-expt b n)
  (define (r a m x)
    (cond
      ((= m 1) (* a x))
      ((even? m) (r (sqr a) (/ m 2) x))
      (else (r a (- m 1) (* a x))))
    )
  (r b n 1))
(define (check b n) (= (fast-expt b n) (expt b n)))
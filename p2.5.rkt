#lang scheme
; 不仅是2^a*3^b可以，任意两个互质的数都可以做底
; 复杂度O(n)
(define (cons a b) (* (expt 2 a) (expt 3 b)))
(define (car p)
  (define (iter r n) (if (odd? r) n (iter (/ r 2) (+ n 1))))
  (iter p 0))
(define (cdr p)
  (define (iter r n) (if (= r 1) n (iter (/ r 3) (+ n 1))))
  (iter (/ p (* (car p) 2)) 0))
(cdr (cons 1 3))
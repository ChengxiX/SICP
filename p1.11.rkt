#lang scheme

; 递归
(define (f n) (if (< n 3) n (+
                             (f (- n 1))
                             (* (f (- n 2)) 2)
                             (* (f (- n 3)) 3))))
; 迭代
(define (F n)
  (define (r count fn-1 fn-2 fn-3)
    (if (< count 0) fn-1
        (r (- count 1)
           (+ fn-1 (* 2 fn-2) (* 3 fn-3))
           fn-1 fn-2))
    )
  (if (< n 3) n (r (- n 3) 2 1 0))
  )

(define (check n) (= (f n) (F n)))
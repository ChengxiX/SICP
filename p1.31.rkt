#lang scheme

(define (product term a next b)
  (if (> a b) 1
      (* (term a) (product term (next a) next b))))
(define (product-iter term a next b)
  (define (iter a result)
  (if (> a b) result (iter (next a) (* result (term a)))))
  (iter a 1)
  )
(define (factorial n) (product-iter (lambda (a) a) 1 (lambda (a) (+ 1 a)) n))
(define (pi/4 n)
  (define (up n) (if (even? n) (+ n 2) (+ n 1)))
  (define (down n) (if (odd? n) (+ n 2) (+ n 1)))
  (/ (product-iter up 1 (lambda (a) (+ 1 a)) n)
     (product-iter down 1 (lambda (a) (+ 1 a)) n))
  )
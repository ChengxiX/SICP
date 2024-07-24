#lang sicp
(load "square.rkt")

(define (get-squaret x min max jingdu)
  (if (<= (abs (- x (square (/ (+ min max) 2)))) jingdu)
      (/ (+ min max) 2)
      (if (> (square (/ (+ min max) 2)) x)
          (get-squaret x min (/ (+ min max) 2) jingdu)
          (get-squaret x (/ (+ min max) 2) max jingdu)
)))

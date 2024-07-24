#lang scheme

(define (get-sqrt x min max jingdu)
  (if (<= (abs (- x (sqr (/ (+ min max) 2)))) jingdu)
      (/ (+ min max) 2)
      (if (> (sqr (/ (+ min max) 2)) x)
          (get-sqrt x min (/ (+ min max) 2) jingdu)
          (get-sqrt x (/ (+ min max) 2) max jingdu)
)))

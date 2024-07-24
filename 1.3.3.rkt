#lang scheme
(define tolerance 0.00001)
(define (fixed-point f init)
  (define (iter last)
    (let ((next (f last)))
      (display last)
      (newline)
      (if (< (abs (- next last)) tolerance)
          last
          (iter next))))
  (iter init))
(provide fixed-point)
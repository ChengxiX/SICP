#lang scheme
(define (filtered-accumulate combiner null-value filter term a next b)
  (define (iter a result)
    (if (filter a)
        (if (> a b) result (iter (next a) (combiner result (term a))))
    (iter (next a) result)
    ))
    (iter a null-value)
  )
#lang scheme
(define (fib-iter n a b p q)
  (cond
    ((= n 0) b) ; a0=1, a1=1, a2=2 ...
    ; 为什么(= n 0)因为总需要一次结算，否则n=2之后n=1就没有结算了
    ((even? n) (fib-iter (/ n 2) a b (+ (sqr p) (sqr q))
                         (+ (sqr q) (* 2 p q))))
    (else (fib-iter (- n 1)
           (+ (* b q) (* a q) (* a p))
           (+ (* b p) (* a q))
           p q) ; 具体为什么还是p q没想清楚（并不清零）
     )
  ))
(define (fib n) (fib-iter n 1 0 0 1))
(fib 100)
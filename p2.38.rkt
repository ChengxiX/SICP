#lang scheme

(require "p2.33.rkt")
(define (fold-left op initial sequence)
    (define (iter result rest)
        (if (null? rest)
            result
            (iter (op result (car rest)) ; 注意op的参数序
                  (cdr rest))))
    (iter initial sequence))
;(fold-left list '() '(1 2 3))
;(fold-left / 1 '(1 2 3))
; 参数序无关
(define fold-right accumulate)
;(fold-right / 1 '(1 2 3))
;(fold-right list '() '(1 2 3))
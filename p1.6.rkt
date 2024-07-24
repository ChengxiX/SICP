#lang sicp
(load "square.rkt")
(define (new-if predi then-cl else-cl)
  (cond (predi then-cl)
        (else else-cl)))
; else是什么样的存在？
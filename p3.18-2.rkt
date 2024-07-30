(load "p3.13.rkt")
(define id (cons 'a 'b)) ; cons生成的两个内容一样的对也不eq?，只有指针指向的地址（对象相同才行）
(define (check li)
  (define (iter rest)
    (if (null? rest) #t
    (if (eq? id (car rest))
        #f
        (begin (set-car! rest id)
               (iter (cdr rest))))))
  (iter li)) ; 为什么要闭包一层呢？因为li得是个可变量。实验如下
(define (test-check li)
  (display li)
  (if (null? li) #t
    (if (eq? id (car li))
        #f
        (begin (set-car! li id)
               (test-check (cdr li))))))
; 实验结果是，我刚才好像错了，不用闭包一层
;(check x)
(test-check x)
; (check z)
(test-check b)

; 本题为什么不是常量空间？
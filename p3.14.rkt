; 反过来的列表
(define (mys x)
  (define (loop x y)
    (if (null? x) y
        (let ((temp (cdr x)))
          (set-cdr! x y)
          (loop temp x))))
  (loop x '()))
(define w (mys '(a b c d)))
  
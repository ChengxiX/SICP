#lang scheme
(define (my-map f . lists)
  (define (get-car li) (if (null? lists) (cons '() '())
                        (let ((res (get-car (cdr li))))
                          (cons (cons (car (car li)) (car res))
                                (cons (cdr (car li)) (cdr res))))))
  (define (iter li) (let ((pair-list (get-car lists))) (if (null? (car (cdr pair-list))) (cons (apply f (car pair-list)) '())
                                                           (cons (apply f (car pair-list))
                                                                 (iter (cdr pair-list))))))
  (iter lists))
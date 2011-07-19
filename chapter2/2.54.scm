(define (equal? list1 list2)
  (cond ((and (list? list1) (list? list2))
         (and (= (car list1) (car list2))
              (equal? (cdr list1) (cdr list2))))
        ((not (or (list? list1) (list? list2)))
         (eq? list1 list2))
        (else #f)))

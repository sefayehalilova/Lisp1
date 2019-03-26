;Определите функцию, разделяющую исходный список на два подсписка. 
;В первый из них должны попасть элементы с нечетными номерами, во второй - элементы с четными номерами.

(defun broke (str) 
    ((lambda (first) 
       (cond ((null first) str) 
                      (t (setq nstr (broke (cddr str))) 
                        (list 
                         (cons first (car nstr)) 
                         (cons (cadr str) (cadr nstr))
                         )
                      ) 
       ) 
     )            
      (car str)
 
    )
)



;(print (broke `(6 8 7 3 2 6)))
;((6 7 2) (8 3 6))

;(print (broke `()))
;NIL

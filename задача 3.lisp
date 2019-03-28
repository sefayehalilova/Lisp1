;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим 


(defun repl (str n m) 
    ((lambda (first last) 
       (cond ((null str) nil) 
         ((equal first n) (cons m (repl last n m)))
         ((cons first (repl last n m)))             
       ) 
     )            
      (car str) (cdr str)  
 
    )
)


;(print(repl '(2 4 3 6 7 ) 6 7))
;(2 4 3 7 7)
;(print(repl '(1 1 0 5 1 ) 1 'd))
;(D D 0 5 D) 

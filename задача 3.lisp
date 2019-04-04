;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим 

(defun repl (str &key x y) 
    ((lambda (first last) 
       (cond ((null str) nil) 
         ((equal first x) (cons y (repl last :x x :y  y)))
         (t(cons first (repl last :x x :y y)))             
       ) 
      )            
      (car str) (cdr str)  
 
    )
)



;(print(repl '(2 4 3 6 7 ) :x  6 :y 7))
;(2 4 3 7 7)
;(print(repl '(1 1 0 5 1 ) :x 1 :x 'd))
;(D D 0 5 D) 

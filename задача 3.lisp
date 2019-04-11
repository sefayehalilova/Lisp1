;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим 

(defun repl (str &key source dest) 
    ((lambda (first last) 
       (cond ((null str) nil) 
         ((equal first source) (cons dest (repl last :source source :dest  dest)))
         (t(cons first (repl last :source source :dest dest)))             
       ) 
      )            
      (car str) (cdr str)  
 
    )
)




;(print(repl '(2 4 3 6 7 ) :source  6 :dest 7))
;(2 4 3 7 7)
;(print(repl '(1 1 0 5 1 ) :source 1 :dest 'd))
;(D D 0 5 D) 

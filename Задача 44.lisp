;Определите функцию, проверяющую, является ли одно дерево поддеревом второго.


(defun trees (str1 str2) 
    ((lambda (first last) 
       (cond((null str1) nil)
       ((atom first) (trees last str2))
        (t(if (equal first str2) 
           t(or (trees first str2) (trees last str2)))
        )
       ) 
     )            
      (car str1) (cdr str1)  
 
    )
)

;(print(trees '((a (b(c))) h m) '(a (b (c)))))
;T
;(print(trees '((a (b(c))) h (m(l))) '(a b c))) 
;NIL

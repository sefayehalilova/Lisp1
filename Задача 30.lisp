;Запрограммируйте интерпретатор ВЫЧИСЛИ, который преобразует инфиксную запись операций в префиксную и возвращает значение выражений.
;Пример:
;(ВЫЧИСЛИ '((-2 + 4) * 3))
;6
   
(defun calculate (str)
(eval ( prefix str ))
 )

(defun prefix (lst)
   (cond ((null lst) nil)
         ((atom lst) lst)
         (t (list (prefix (cadr lst)) (prefix (car lst) ) (prefix (caddr lst)))
          )
    )
 )
    

(print  (prefix '((-4 + 4 ) *  3 ))) 
(print (calculate '((4 + 4 ) *  3 ))) 

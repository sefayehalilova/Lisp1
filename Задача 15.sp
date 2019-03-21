;Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.  

(defun scal-prod (v1 v2)
   (if (or (null v1)(null v2)) 0   
   (+ (* (car v1) (car v2)) ( scal-prod(cdr v1) (cdr v2)))
   )
 )
 
 (print(scal-prod '(4 7) '(2 9)))
   
   

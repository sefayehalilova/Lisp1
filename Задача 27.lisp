;Определите функцию, которая, чередуя элементы списков (a b...) и (1 2...),
;образует новый список (a 1 b 2 ...).

(defun alternate (lst1 lst2)
	(cond ((null lst1) nil)
		  ((null lst2) nil)
		 (t(cons 
				(car lst1)
				(cons (car lst2) (alternate (cdr lst1) (cdr lst2)))
			)
		  )
	 )
)
;(print ( alternate '(a b c d n m) '(1 2 3 4 5 6)))
;(A 1 B 2 C 3 D 4 N 5 M 6)
;(print ( alternate '() '(1 2 3 4)))
;NIL
;(print ( alternate '(1) '(a)))
;(1 A)

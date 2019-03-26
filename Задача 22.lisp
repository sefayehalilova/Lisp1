;Определите функцию, которая обращает список (а б с) и разбивает его на уровни (((с) б) а). 

(defun obr (abc)
	(list(list (cddr abc) (cadr abc)) (car abc))
)
  
;(print(obr `(a b c)))
;(((C) B) A)

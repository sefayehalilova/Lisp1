;Определите функцию, которая обращает список (а б с) и разбивает его на уровни (((с) б) а). 

(defun rev-lev(str)
    ((lambda(last) 
     (if(null last)str
        (list(rev-lev last)(car str))
      )
      )
     (cdr str)
    )
)

	 
;(print(rev-lev '(g j k l m)))
;(((((M) L) K) J) G)

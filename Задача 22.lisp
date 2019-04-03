;Определите функцию, которая обращает список (а б с) и разбивает его на уровни (((с) б) а). 

(defun levels-and-revers(str)
    ((lambda(last) 
     (if(null last)str
        (list(levels-and-revers last)(car str))
      )
      )
     (cdr str)
    )
)

	 
;(print(levels-and-revers '(g j k l m)))
;(((((M) L) K) J) G)

;Определите предикат, проверяющий, является ли аргумент одноуровневым списком. 

(defun single-level(str)
   (cond((null str) T)
     ((and (atom (car str)) (single-level (cdr str))))
     )
)

;(print (single-level '(4 6 2)))
;T
;(print (single-level '(4 (6 2)))) 
;NIL

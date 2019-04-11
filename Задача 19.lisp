;Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.


(defun onion (n &optional (petal n))
  (cond ((= 0 n) petal) 
      (t (list (onion (- n 1) petal)))
                
   )
)


;(print(onion 0))
;0
;(print(onion 1))
;(1)
;(print(onion 4))
;((((4))))

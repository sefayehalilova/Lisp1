;Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.


(defun onion (n)
  (defun onion1 (petal n) 
   (cond ((= petal n) (list n))
           (t (list (onion1 (+ petal 1) n)))
                
    )
   )
                (
                    onion1 1 n
                )
            	
)


;(print(onion 1))
;(1)
;(print(onion 2))
;((2))
;(print(onion 4))
;((((4))))

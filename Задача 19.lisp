;Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.




(defun onion (n &optional (petal n)))
  (cond ((= 1 n) (list n)) 
      (t (list (onion (+ 1 petal) n)))
                
   )
)


(print(onion 2))

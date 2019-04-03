;Определите функцию, разделяющую исходный список на два подсписка. 
;В первый из них должны попасть элементы с нечетными номерами, во второй - элементы с четными номерами.

(defun broke ( str )
    ((lambda (second rest)
    (if str
        (list
            (cons (car str) (car (broke rest)))
             (if second
                (cons second (cadr (broke rest)))
             )
        ) 
    )
      )
     (cadr str) (cddr str) 
     )
)
	

;( print (broke '( 8 )))
;( print (broke '( 1 2 5 6 )))
;( print (broke '( a b c d k f )))

;((8) NIL) 
;((1 5) (2 6)) 
;((A C K) (B D F)) 


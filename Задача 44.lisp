;Определите функцию, проверяющую, является ли одно дерево поддеревом второго.

(defun trees (v1 v2)
    ((lambda (x)(and (setq first (car x)) (setq last (cdr x))))v1)
     (cond((null v1) nil)
       ((atom first) (trees last v2))
       ( (if (equal first v2) 
           t(or (trees first v2) (trees last v2)))
       )
      )
 )


;(print(trees '((a (b(c))) h m) '(a (b (c)))))
;T
;(print(trees '((a (b(c))) h (m(l))) '(a b c))) 
;NIL

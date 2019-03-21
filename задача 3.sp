;Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.  

(defun repl (w n m)
    
 (cond ((null w) nil)
    
       ((equal (car w) n) (cons m (repl(cdr w) n m)))
      ((listp (car w)) (cons (repl (car w) n m) (repl (cdr w) n m)))
(t (cons (car w) (repl (cdr w) n m)))))


(print(repl '(2 4 3 6 7 ) 6 7))
(print(repl '(1 1 0 5 1 ) 1 'd))

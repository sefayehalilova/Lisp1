# Lisp1
Задача 1 (3)  
---------  
Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим.  
Решение:  
```diff
(defun repl (w n m)
    
 (cond ((null w) nil)
    
       ((equal (car w) n) (cons m (repl(cdr w) n m)))
      ((listp (car w)) (cons (repl (car w) n m) (repl (cdr w) n m)))
(t (cons (car w) (repl (cdr w) n m)))))
```   
Результат 1:  
```diff

(print(repl '(2 4 3 6 7 ) 6 7)) 
(2 4 3 7 7)
```   
Результат 2:  
```diff
(print(repl '(1 1 0 5 1 ) 1 'd))  
(D D 0 5 D) 
``` 

Задача 2 (9)  
--------------  
Определите функцию, разделяющую исходный список на два подсписка. В первый из них должны попасть элементы с нечетными номерами, во второй - элементы с четными номерами.  
Решение:  
```diff  

```   
Результат 1:  
```diff  

```  
Задача 3 (15)  
-----------------  

Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.  
Решение:  
```diff

(defun scal-prod (v1 v2)
   (if (or (null v1)(null v2)) 0   
   (+ (* (car v1) (car v2)) ( scal-prod(cdr v1) (cdr v2)))))
```   
Результат:  
```diff
(print(scal-prod '(4 7) '(2 9)))  
71
```   
Задача 4 (18)  
----------------
Определите предикат, проверяющий, является ли аргумент одноуровневым списком.  
Решение:  
```diff  
(defun single-level(str)
   (cond((null str) T)
     (T (and (atom (car str)) (single-level (cdr str))))))

```  
Результат 1:  
```diff  
(print (single-level '(4 6 2)))  
T
```   
Результат 2:  
```diff  
(print (single-level '(4 (6 2))))  
NIL
``` 
Задача 5 (19)  
--------------------
Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.  
Решение:  
```diff

```  
Результат:  
```diff

``` 
Задача 6 (22)  
----------------   
Определите функцию, которая обращает список (а б с) и разбивает его на уровни (((с) б) а).  
Решение:  
```diff
(defun obr (abc)
	(list(list (cddr abc) (cadr abc)) (car abc)))
```  
Результат:  
```diff
(print(obr `(a b c)))  
(((C) B) A)

```
Задача 7 (30)  
---------------  
Запрограммируйте интерпретатор ВЫЧИСЛИ, который преобразует инфиксную запись операций в префиксную и возвращает значение выражений.  
Пример:  
>(ВЫЧИСЛИ '((-2 + 4) * 3))  
6  
Решение:  
```diff

```   
Результат:  
```diff

``` 

Задача 8 (44)  
---------------  
Определите функцию, проверяющую, является ли одно дерево поддеревом второго.  
Решение:  
```diff
(defun trees (v1 v2)
  (cond
    ((null v1) nil)
    ((atom (car v1)) (trees (cdr v1) v2))
    ( t(if (equal (car v1) v2) 
           t(or (trees (car v1) v2) (trees (cdr v1) v2))))))
```  
Результат 1:  
```diff
(print(trees '((a (b(c))) h m) '(a (b (c)))))  
T
```  
Результат 2:  
```diff
(print(trees '((a (b(c))) h (m(l))) '(a b c)))  
NIL
``` 

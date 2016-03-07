;;;;Applicative programming - understanding and exercies

;;; Funcall
(funcall #'cons 'a 'b)


;;; mapCar
(defun square(n)
  (* n n))

(mapcar #'square '(1 2 3 4))

;; mapcar on tables - tables are nothing but assiciative lists
;; lists withing lists

(setf details '((name hareesh) (age 42) (race asian)))
(reverse(mapcar #' first details))

;;; lambda expresssions
(mapcar #'(lambda (n) (* n n )) '(1 2 3 4))


(lambda (n)
  (list 'hi n ))

(mapcar #'(lambda (n)
	    (list 'hi n))
	'(aneesh ajeesh hareesh))

;;; find-if operator
(setf g10 (lambda (x) (> x 10)))
(find-if g10 '(6 2 13))


;;;my own version of assoc
(defun my-assoc(key table)
  (find-if #'(lambda (entry)
	       (equal key (first entry))) table))

(my-assoc 'name details)


;;; remove-if applicative operator and remove if not applicative operator
(remove-if-not #'evenp '(1 3 4 5))


;;; reduce the next applicative operator
(reduce #'+ '(1 2 3 4))
(reduce #'+ ())

(reduce #'append details)

;;every another applicative operator
(every #'evenp '(2 4 6 8))

 

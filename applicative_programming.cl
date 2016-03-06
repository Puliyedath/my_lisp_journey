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

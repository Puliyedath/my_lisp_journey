;;;;Applicative programming - understanding and exercies

;;; Funcall
(funcall #'cons 'a 'b)


;;; mapCar
(defun square(n)
  (* n n))

(mapcar #'square '(1 2 3 4))

;; mapcar on tables - tables are nothing but assiciative lists
;; lists withing lists

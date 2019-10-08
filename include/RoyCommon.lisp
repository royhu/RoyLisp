(defun RoyNull (x)
	(eq x '())
)	


(defun RoyAnd (x y)
	(cond (x ( cond (y 't) ('t '()) ))
		  ('t '())
	)
)


(defun RoyNot (x)
	(cond (x 't) ('t '()))
)


(defun RoyAppend (x y)
	(cond ( (null x) y)
		  (	't (cons (car x) (RoyAppend (cdr x) y)) )
	)
)


;;diff with assoc which return a table
(defun RoyAssoc (x y)
	(cond ((eq (caar y) x) (cadar y))
		  ('t (RoyAssoc x (cdr y)))
	)
)


(defun RoySubst (x y z)
	(cond ( (atom z) ( cond ((eq z y) x)
							('t z)
					 )
		  )
		  ('t (cons (RoySubst x y (car z))
					(RoySubst x y (cdr z))
			  )
		  )
	)
)

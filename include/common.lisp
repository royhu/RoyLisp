(defun pair (x y)
	(cond ( (and (null x) (null y)) '() )
		  ( (and (not (atom x)) (not (atom y)))
			(cons (list (car x) (car y))
				  (pair (cdr x) (cdr y))
			)
		  )
	)
)	


(defun is-leap-year (year)
	(and (zerop (mod year 4))
		 (or (zerop (mod year 400))
			 (not (zerop (mod year 100)))
		 )
	)
)	


(defun get-days-of-month (year month)
	(case month
		( (Jan Mar May July Aug Oct Dec) 31 )
		( (Apr June Sept Nov) 30 )
		( (Feb) (cond ((is-leap-year year) 29) ('t 28)) )
		( otherwise "Unknown month" )
	)
)

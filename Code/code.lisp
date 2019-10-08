#!/opt/local/bin/clisp

(setq CodeMap '(
	(bilibili ("User:" "RoyDHu") ("Pwd:" "s"))
))

(defun PrintList(l)
	(format t "~a	~a ~%" (car l) (cadr l))
)

(defun ShowCode(key)
	(setq tmp (assoc key CodeMap))
	(PrintList (cadr tmp))
	(PrintList (caddr tmp))
)

(ShowCode (read-from-string (car *args*)))

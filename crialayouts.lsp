;criando varias abas de layout

(defun c:crialayouts ()
  (setq cont 2)
  (repeat 20
  		 (command "layout" "c" "1" cont)
    		 (setq cont (+ cont 1))
	  )
)
		     
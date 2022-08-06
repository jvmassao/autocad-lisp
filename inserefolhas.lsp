;inserindo as folhas

(defun c:inserefolhas ()
  (setq cont 1)
  (repeat 10
  		 (command "layout" "s" cont)
		 (command "-insert" cont "0,0" "1" "" "0") 
    		 (setq cont (+ cont 1))
	  )
)
		     
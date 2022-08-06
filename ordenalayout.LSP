(defun c:ordenalayout (/ ordem listaLayouts layouts)
  ;carrega as extensoes VL
  (vl-load-com)
  
  (setq
    ;obtem a coleção de layouts do desenho atual
    listaLayouts (vla-get-layouts (vla-get-activedocument (vlax-get-acad-object)))
    ;obtem a lista de nomes de layout, ordenados em ordem crescente
    layouts      (vl-sort (layoutlist) '<)
    ;inicializa a ordem
    ordem        1)
  

  ;para todo nome de layout na lista de nomes ordenados
  (foreach layout layouts
    ;poe a ordem do layout igual a 'ordem'
    (vla-put-taborder (vla-item listaLayouts layout) ordem)
    ;incrementa a ordem
    (setq ordem (1+ ordem))
    )
  )

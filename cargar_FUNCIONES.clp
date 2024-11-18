(deffunction agregar-enfermedad (?nombre ?tipo ?signos ?sintomas)
   (assert (enfermedad (nombre ?nombre) (tipo ?tipo) (signos $?signos) (sintomas $?sintomas)))
   (printout t "Enfermedad " ?nombre " agregada exitosamente." crlf)
)

(deffunction borrar-enfermedad (?nombre)
   (do-for-all-facts ((?e enfermedad)) 
      (if (eq ?e:nombre ?nombre) then 
         (retract ?e)
         (printout t "Enfermedad " ?nombre " eliminada exitosamente." crlf)
      )
   )
   (if (not (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre)))
      then
         (printout t "La enfermedad " ?nombre " no se encontró." crlf)
   )
)

(deffunction actualizar-enfermedad (?nombre ?nuevoTipo ?nuevosSignos ?nuevosSintomas)
   ; Buscar el hecho de la enfermedad que coincide con el nombre proporcionado
   (do-for-all-facts ((?e enfermedad))
      (if (eq ?e:nombre ?nombre) then
         ; Si encontramos el hecho, lo retiramos y lo reemplazamos con la nueva información
         (retract ?e)
         (assert (enfermedad (nombre ?nombre)
                             (tipo ?nuevoTipo)
                             (signos $?nuevosSignos)
                             (sintomas $?nuevosSintomas)))
         (printout t "Enfermedad " ?nombre " actualizada exitosamente." crlf)
      )
   )
   ; Si no encontramos el hecho de la enfermedad, imprimimos un mensaje
   (if (not (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre)))
      then
         (printout t "La enfermedad " ?nombre " no se encontró." crlf)
   )
)


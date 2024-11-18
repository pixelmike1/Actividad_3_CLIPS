(defrule diagnosticar-tuberculosis-signos
   ?d <- (enfermedad
            (nombre "Bronquitis Crónica")
            (signos $? "temperatura alta" $? "sudoración excesiva" $? "reducción de masa corporal"))
   =>
   (printout t "Diagnóstico parcial: Bronquitis Crónica (según signos)." crlf))

(defrule diagnosticar-neumonia-signos
   ?d <- (enfermedad
            (nombre "Absceso Pulmonar")
            (signos $? "temperatura alta alta"))
   =>
   (printout t "Diagnóstico parcial: Absceso Pulmonar (según signos)." crlf))

(defrule diagnosticar-tetanos-signos
   ?d <- (enfermedad
            (nombre "Espasmo Muscular Crónico")
            (signos $? "rigidez en el cuello y mandíbula"))
   =>
   (printout t "Diagnóstico parcial: Espasmo Muscular Crónico (según signos)." crlf))

(defrule diagnosticar-salmonelosis-signos
   ?d <- (enfermedad
            (nombre "Gastroenteritis Aguda")
            (signos $? "temperatura alta" $? "náuseas" $? "vómitos"))
   =>
   (printout t "Diagnóstico parcial: Gastroenteritis Aguda (según signos)." crlf))

(defrule diagnosticar-sifilis-signos
   ?d <- (enfermedad
            (nombre "Infección Sistémica B")
            (signos $? "temperatura alta" $? "inflamación de ganglios linfáticos"))
   =>
   (printout t "Diagnóstico parcial: Infección Sistémica B (según signos)." crlf))

(defrule diagnosticar-influenza-signos
   ?d <- (enfermedad
            (nombre "Resfriado Común")
            (signos $? "temperatura alta" $? "dolores musculares"))
   =>
   (printout t "Diagnóstico parcial: Resfriado Común (según signos)." crlf))

(defrule diagnosticar-varicela-signos
   ?d <- (enfermedad
            (nombre "Erupción Dermal")
            (signos $? "temperatura alta" $? "erupciones en la piel"))
   =>
   (printout t "Diagnóstico parcial: Erupción Dermal (según signos)." crlf))

(defrule diagnosticar-hepatitisb-signos
   ?d <- (enfermedad
            (nombre "Hepatitis C")
            (signos $? "ictericia" $? "orina oscura"))
   =>
   (printout t "Diagnóstico parcial: Hepatitis C (según signos)." crlf))

(defrule diagnosticar-sida-signos
   ?d <- (enfermedad
            (nombre "Inmunodeficiencia Adquirida")
            (signos $? "reducción de masa corporal" $? "infecciones oportunistas"))
   =>
   (printout t "Diagnóstico parcial: Inmunodeficiencia Adquirida (según signos)." crlf))

(defrule diagnosticar-sarampion-signos
   ?d <- (enfermedad
            (nombre "Erupción Viral X")
            (signos $? "temperatura alta alta" $? "erupción cutánea"))
   =>
   (printout t "Diagnóstico parcial: Erupción Viral X (según signos)." crlf))

(defrule consultar-enfermedad-por-sintomas
   ?consulta <- (consulta (sintomas $?sintomasIngresados))
   ?enfermedad <- (enfermedad (nombre ?nombre) (sintomas $?sintomasEnfermedad))
   (test (subsetp $?sintomasIngresados $?sintomasEnfermedad))
   =>
   (printout t "Consulta: Enfermedad encontrada con los síntomas indicados: " ?nombre crlf)
   (retract ?consulta)
)

(defrule consultar-enfermedad-por-tipo
   ?consulta <- (consulta (tipo ?tipo))
   ?enfermedad <- (enfermedad (nombre ?nombre) (tipo ?tipo))
   =>
   (printout t "Consulta: Enfermedad de tipo " ?tipo " encontrada: " ?nombre crlf)
   (retract ?consulta)  ; Limpiamos el hecho de consulta
)

(defrule consultar-enfermedad-por-signos
   ?consulta <- (consulta (signos $?signosIngresados))
   ?enfermedad <- (enfermedad (nombre ?nombre) (signos $?signosEnfermedad))
   (test (subsetp $?signosIngresados $?signosEnfermedad))
   =>
   (printout t "Consulta: Enfermedad encontrada con los signos indicados: " ?nombre crlf)
   (retract ?consulta)
)

(defrule consultar-enfermedad-por-nombre
   ?consulta <- (consulta (nombre ?nombre))
   ?enfermedad <- (enfermedad (nombre ?nombre))
   =>
   (printout t "Consulta: Enfermedad encontrada con el nombre " ?nombre crlf)
   (retract ?consulta)
)
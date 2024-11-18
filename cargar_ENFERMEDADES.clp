;; enfermedades.clp

(deftemplate enfermedad
    (slot nombre)
    (slot tipo)
    (multislot signos)
    (multislot sintomas)
)

(deftemplate consulta
   (slot tipo)     ; Tipo de enfermedad a consultar
   (multislot sintomas) ; Síntomas a consultar
   (multislot signos)   ; Signos a consultar
   (slot nombre)   ; Nombre específico de la enfermedad a consultar
)

(deffacts enfermedades
    (enfermedad (nombre "Bronquitis Crónica") 
                (tipo "Bacteriana") 
                (signos "temperatura alta" "sudoración excesiva" "reducción de masa corporal")
                (sintomas "dificultad para respirar" "molestia torácica"))
                
    (enfermedad (nombre "Absceso Pulmonar") 
                (tipo "Bacteriana") 
                (signos "temperatura alta alta")
                (sintomas "tos productiva" "dificultad para respirar" "molestia torácica"))
                
    (enfermedad (nombre "Espasmo Muscular Crónico") 
                (tipo "Bacteriana") 
                (signos "rigidez en el cuello y mandíbula")
                (sintomas "espasmos musculares" "dificultad para tragar"))
                
    (enfermedad (nombre "Gastroenteritis Aguda") 
                (tipo "Bacteriana") 
                (signos "temperatura alta" "náuseas" "vómitos")
                (sintomas "diarrea" "dolor abdominal"))
                
    (enfermedad (nombre "Infección Sistémica B") 
                (tipo "Bacteriana") 
                (signos "temperatura alta" "inflamación de ganglios linfáticos")
                (sintomas "úlceras" "erupciones cutáneas" "fatiga"))
                
    (enfermedad (nombre "Resfriado Común") 
                (tipo "Viral") 
                (signos "temperatura alta" "dolores musculares")
                (sintomas "tos" "dolor de garganta" "fatiga"))
                
    (enfermedad (nombre "Erupción Dermal") 
                (tipo "Viral") 
                (signos "temperatura alta" "erupciones en la piel")
                (sintomas "picazón" "cansancio"))
                
    (enfermedad (nombre "Hepatitis C") 
                (tipo "Viral") 
                (signos "ictericia" "orina oscura")
                (sintomas "fatiga" "náuseas" "dolor abdominal"))
                
    (enfermedad (nombre "Inmunodeficiencia Adquirida") 
                (tipo "Viral") 
                (signos "reducción de masa corporal" "infecciones oportunistas")
                (sintomas "fatiga extrema" "temperatura alta"))
                
    (enfermedad (nombre "Erupción Viral X") 
                (tipo "Viral") 
                (signos "temperatura alta alta" "erupción cutánea")
                (sintomas "tos" "ojos rojos" "dolor de garganta"))
)
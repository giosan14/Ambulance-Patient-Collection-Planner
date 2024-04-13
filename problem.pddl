(define (problem city)
(:domain transporte)
(:objects 
l1 l2 l3 l4 
amb 
p1 p2 
hospital
)
(:init 
(Hospital l1)
(Ambulancia amb)
;rutas de ida 
(Ruta l1 l2)
(Ruta l2 l4)
(Ruta l4 l3)
;rutas de regreso
(Ruta l3 l4)
(Ruta l4 l2)
(Ruta l2 l1)
;definir donde estan los pacientes
(Paciente p1)
(Paciente p2)
(disponible amb)
(ambulancialoca l1)
(pacienteloca p1 l4)
(pacienteloca p2 l3)
)

(:goal 
(and (pacienteloca p1 l1) (pacienteloca p2 l1))
)

)
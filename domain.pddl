(define (domain transporte)

    (:predicates
    (Hospital ?hosp)
    (Ambulancia ?a)
    (Ruta ?l ?l2)
    (Paciente ?p)
    (disponible ?a)
    (ndisponible ?a ?p)
    (ambulancialoca ?l)
    (pacienteloca ?p ?l)
    
    )

    (:action manejar
    :parameters (?from ?to)
    :precondition (and (Ruta ?from ?to) (ambulancialoca ?from))
    :effect (and (ambulancialoca ?to) (not (ambulancialoca ?from))    
    )
    )
    
    (:action subir-paciente
    :parameters (?pat ?loc ?loc2 ?amb)
    :precondition (and (Paciente ?pat) (Ruta ?loc ?loc2) (Ambulancia ?amb) (pacienteloca ?pat ?loc) (ambulancialoca ?loc) (disponible ?amb))
    :effect (and (ndisponible ?pat ?amb) (not (pacienteloca ?pat ?loc)) (not (disponible ?amb))
    )
    
    )
    
    (:action bajar-paciente
    :parameters (?pat ?loc ?loc2 ?amb)
    :precondition (and (Paciente ?pat) (Ruta ?loc ?loc2) (Ambulancia ?amb) (ndisponible ?pat ?amb) (ambulancialoca ?loc))
    :effect (and (pacienteloca ?pat ?loc) (disponible ?amb) (not(ndisponible ?pat ?amb))
    )
    
    )

    
)
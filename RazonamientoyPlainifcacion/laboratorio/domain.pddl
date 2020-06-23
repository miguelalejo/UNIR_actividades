;Header and description

(define (domain dominio-mono)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    posicion entidadMono entidadCaja  entidadBanana - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (localizacion ?ent - entidadMono ?pos - posicion)
    (localizacionCaja ?ent - entidadCaja ?pos - posicion)
    (localizacionBanana ?ent - entidadBanana ?pos - posicion)
    (inc ?x - posicion ?y - posicion)
    (concaja ?ent - entidadMono)
    (encimacaja ?ent - entidadMono ?caja - entidadCaja)
    (recojebanana ?ent - entidadMono ?banana - entidadBanana)
)

(:action mover-mono
    :parameters (?mono - entidadMono ?posOri - posicion ?posDest - posicion)
    :precondition (and 
        (localizacion ?mono ?posOri)
        (inc ?posOri ?posDest)
        (not (concaja ?mono))
    )
    :effect (and 
        (not (localizacion ?mono ?posOri))
        (localizacion ?mono ?posDest)       
    )
)



(:action encontrar-mono-caja
    :parameters (?mono - entidadMono ?caja - entidadCaja ?pos - posicion)
    :precondition (and 
        (localizacion ?mono ?pos)        
        (localizacionCaja ?caja ?pos)
        (not (concaja ?mono))
    )
    :effect (and         
        (concaja ?mono)
    )
)

(:action subir-mono-caja
    :parameters (?mono - entidadMono ?caja - entidadCaja ?pos - posicion)
    :precondition (and 
        (localizacion ?mono ?pos)        
        (localizacionCaja ?caja ?pos)
        (concaja ?mono)        
        (not(encimacaja ?mono ?caja))
    )
    :effect (and 
        (encimacaja ?mono ?caja)               
    )
)

(:action bajar-mono-caja
    :parameters (?mono - entidadMono ?caja - entidadCaja ?pos - posicion)
    :precondition (and 
        (localizacion ?mono ?pos)        
        (localizacionCaja ?caja ?pos)
        (concaja ?mono)        
        (encimacaja ?mono ?caja)
    )
    :effect (and 
        (not(encimacaja ?mono ?caja))
    )
)

(:action recoger-mono-banana
    :parameters (?mono - entidadMono ?caja - entidadCaja ?banana - entidadBanana ?pos - posicion)
    :precondition (and
        (localizacion ?mono ?pos)
        (localizacionCaja ?caja ?pos)                         
        (localizacionBanana ?banana ?pos)                         
        (encimacaja ?mono ?caja)        
    )
    :effect (and 
        (recojebanana ?mono ?banana)        
    )
)

(:action empujar-mono-caja
    :parameters (?mono - entidadMono ?caja - entidadCaja ?posOri - posicion ?posDest - posicion)
    :precondition (and 
        (localizacion ?mono ?posOri)
        (localizacionCaja ?caja ?posOri)
        (inc ?posOri ?posDest)
        (concaja ?mono)
        (not(encimacaja ?mono ?caja))
    )
    :effect (and 
        (not (localizacion ?mono ?posOri))
        (not (localizacionCaja ?caja ?posOri))
        (localizacion ?mono ?posDest)
        (localizacionCaja ?caja ?posDest)       
    )
)



;define actions here

)
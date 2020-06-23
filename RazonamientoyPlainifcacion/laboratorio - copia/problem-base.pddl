(define (problem problema-mono-caja-banana) (:domain dominio-mono)
(:objects 
    p1 p2 p3 - posicion
    m1 - entidadMono
    c1 - entidadCaja
    b1 - entidadBanana
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (inc p1 p2)
    (inc p2 p3)
    (inc p3 p2)
    (inc p2 p1)
    (localizacion m1 p3)    
    (localizacionCaja c1 p1)
    (localizacionBanana b1 p2)
)

(:goal (and
    ;todo: put the goal condition here    
    (recojebanana m1 b1)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)

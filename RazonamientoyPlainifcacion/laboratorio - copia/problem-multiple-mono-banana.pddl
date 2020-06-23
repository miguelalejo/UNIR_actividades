(define (problem problema-multiple-mono-banana) (:domain dominio-mono)
(:objects 
    p1 p2 p3 p4 - posicion
    m1 m2 - entidadMono
    c1 - entidadCaja
    b1 b2 b3 b4 - entidadBanana
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (inc p1 p2)
    (inc p2 p3)
    (inc p3 p4)
    (inc p4 p3)
    (inc p3 p2)
    (inc p2 p1)
    (localizacion m1 p1)    
    (localizacion m2 p2)    
    (localizacionCaja c1 p3)
    (localizacionBanana b1 p1)    
    (localizacionBanana b3 p3)
    (localizacionBanana b4 p4)
)

(:goal (and
    ;todo: put the goal condition here    
    (recojebanana m1 b1)    
    (recojebanana m2 b3)
    (recojebanana m1 b4)    
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)

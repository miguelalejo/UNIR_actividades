(define (problem problem-multiple-mono-banana-caja) (:domain dominio-mono)
(:objects 
    p1 p2 p3 p4 p5 p6 - posicion
    m1 m2 m3 - entidadMono
    c1 c2 c3 - entidadCaja
    b1 b2 b3 b4 - entidadBanana
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (inc p1 p2)
    (inc p2 p3)
    (inc p3 p4)
    (inc p4 p5)
    (inc p5 p6)
    (inc p6 p5)
    (inc p5 p4)
    (inc p4 p3)
    (inc p3 p2)
    (inc p2 p1)
    (localizacion m1 p1)
    (localizacion m2 p1) 
    (localizacion m3 p6)    
    (localizacionCaja c1 p3)
    (localizacionCaja c2 p4)
    (localizacionCaja c3 p2)    
    (localizacionBanana b1 p1)    
    (localizacionBanana b2 p2)
    (localizacionBanana b3 p4)
    (localizacionBanana b4 p6)  
)

(:goal (and
    ;todo: put the goal condition here    
    (recojebanana m1 b4)   
    (recojebanana m2 b2) 
    (recojebanana m2 b3)
    (recojebanana m3 b1)    
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)

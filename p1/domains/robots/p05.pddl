(define (problem p01) (:domain robots)
  (:objects l01 l02 l03 l04 l05 l06 l07 l08 l09 l10 - location
	    robotb-0 robotb-1 - robot-brazo
	    robotc-0 robotc-1 - robot-cesta
	    obj0 obj1 obj2 obj3 obj4 obj5 - pobject
        )
  (:init
       (at-robot robotb-0 l01)
       (at-robot robotc-0 l02)
       (at-robot robotb-1 l03)
       (at-robot robotc-1 l04)
       (at-pobject obj0 l05)
       (at-pobject obj1 l06)
       (at-pobject obj2 l07)
       (at-pobject obj3 l08)
       (at-pobject obj4 l09)
       (at-pobject obj5 l10)
       (connected l01 l02)
       (connected l02 l01)
       (connected l03 l02)
       (connected l02 l03)
       (connected l04 l02)
       (connected l02 l04)
       (connected l05 l02)
       (connected l02 l05)
       (connected l06 l05)
       (connected l05 l06)
       (connected l07 l05)
       (connected l05 l07)
       (connected l08 l05)
       (connected l05 l08)
       (connected l09 l08)
       (connected l08 l09)
       (connected l10 l08)
       (connected l08 l10)
       )
  (:goal (and (at-pobject obj0 l01)
              (at-pobject obj1 l02)
              (at-pobject obj2 l03)
              (at-pobject obj3 l04)
              (at-pobject obj4 l05)
              (at-pobject obj5 l06))))

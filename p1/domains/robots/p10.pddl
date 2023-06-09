(define (problem p01) (:domain robots)
  (:objects l01 l02 l03 l04 l05 l06 l07 l08 l09 l10 - location
	    robotb-0 robotb-1 - robot-brazo
	    robotc-0 robotc-1 - robot-cesta
	    obj00 obj01 obj02 obj03 obj04 - pobject
        obj10 obj11 obj12 obj13 obj14 - pobject
        obj20 obj21 obj22 obj23 obj24 - pobject
        obj30 obj31 obj32 obj33 obj34 - pobject
        obj40 obj41 obj42 obj43 obj44 - pobject
        obj50 obj51 obj52 obj53 obj54 - pobject
        )
  (:init
       (= (robot-capacity robotb-0) 2)
       (= (robot-capacity robotb-1) 2)
       (at-robot robotb-0 l01)
       (at-robot robotc-0 l01)
       (at-robot robotb-1 l01)
       (at-robot robotc-1 l01)
       (at-pobject obj00 l01)
       (at-pobject obj01 l01)
       (at-pobject obj02 l01)
       (at-pobject obj03 l01)
       (at-pobject obj04 l01)
       (at-pobject obj10 l01)
       (at-pobject obj11 l01)
       (at-pobject obj12 l01)
       (at-pobject obj13 l01)
       (at-pobject obj14 l01)
       (at-pobject obj20 l01)
       (at-pobject obj21 l01)
       (at-pobject obj22 l01)
       (at-pobject obj23 l01)
       (at-pobject obj24 l01)
       (at-pobject obj30 l01)
       (at-pobject obj31 l01)
       (at-pobject obj32 l01)
       (at-pobject obj33 l01)
       (at-pobject obj34 l01)
       (at-pobject obj40 l01)
       (at-pobject obj41 l01)
       (at-pobject obj42 l01)
       (at-pobject obj43 l01)
       (at-pobject obj44 l01)
       (at-pobject obj50 l01)
       (at-pobject obj51 l01)
       (at-pobject obj52 l01)
       (at-pobject obj53 l01)
       (at-pobject obj54 l01)
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
  (:goal (and (at-pobject obj00 l09)
              (at-pobject obj01 l09)
              (at-pobject obj02 l09)
              (at-pobject obj03 l09)
              (at-pobject obj04 l09)
              (at-pobject obj10 l09)
              (at-pobject obj11 l09)
              (at-pobject obj12 l09)
              (at-pobject obj13 l09)
              (at-pobject obj14 l09)
              (at-pobject obj20 l09)
              (at-pobject obj21 l09)
              (at-pobject obj22 l09)
              (at-pobject obj23 l09)
              (at-pobject obj24 l09)
              (at-pobject obj30 l09)
              (at-pobject obj31 l09)
              (at-pobject obj32 l09)
              (at-pobject obj33 l09)
              (at-pobject obj34 l09)
              (at-pobject obj40 l09)
              (at-pobject obj41 l09)
              (at-pobject obj42 l09)
              (at-pobject obj43 l09)
              (at-pobject obj44 l09)
              (at-pobject obj50 l09)
              (at-pobject obj51 l09)
              (at-pobject obj52 l09)
              (at-pobject obj53 l09)
              (at-pobject obj54 l09))))

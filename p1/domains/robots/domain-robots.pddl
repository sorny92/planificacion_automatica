(define (domain robots)
    (:requirements :strips :typing)
  (:types
     location pobject robot - object
     robot-brazo - robot
     robot-cesta - robot)

  (:predicates (at-robot ?r - robot ?l - location)
	           (at-pobject ?p - pobject ?l - location)
               (holding ?r - robot ?p - pobject)
               (busy-r ?r - robot-brazo)
               (busy-l ?r - robot-brazo)
               (connected ?l - location ?l1 - location)
               )

  (:action MOVE
	   :parameters (?r - robot ?l - location ?l1 - location)
	   :precondition (and (at-robot ?r ?l)
 			              (connected ?l ?l1))
	   :effect (and (at-robot ?r ?l1)
			        (not (at-robot ?r ?l))))

  (:action PICK-UP-R
    :parameters (?r - robot-brazo ?l - location ?p - pobject)
    :precondition (and (at-robot ?r ?l)
                       (at-pobject ?p ?l)
                       (not (holding ?r ?p))
                       (not (busy-r ?r))
                       )
    :effect (and (not (at-pobject ?p ?l))
                 (holding ?r ?p)
                 (busy-r ?r)))

  (:action PICK-UP-L
    :parameters (?r - robot-brazo ?l - location ?p - pobject)
    :precondition (and (at-robot ?r ?l)
                       (at-pobject ?p ?l)
                       (not (holding ?r ?p))
                       (not (busy-l ?r))
                       )
    :effect (and (not (at-pobject ?p ?l))
                 (holding ?r ?p)
                 (busy-l ?r)))
                 
  (:action PUT-DOWN-R
    :parameters (?r - robot-brazo ?l - location ?p - pobject)
    :precondition (and (at-robot ?r ?l)
                       (holding ?r ?p)
                       (busy-r ?r)
                       )
    :effect (and (at-pobject ?p ?l)
                 (not (holding ?r ?p))
                 (not (busy-r ?r))))

  (:action PUT-DOWN-L
    :parameters (?r - robot-brazo ?l - location ?p - pobject)
    :precondition (and (at-robot ?r ?l)
                       (holding ?r ?p)
                       (busy-l ?r)
                       )
    :effect (and (at-pobject ?p ?l)
                 (not (holding ?r ?p))
                 (not (busy-l ?r))))
  
  (:action TAKE-FROM-NEST-R
    :parameters (?rb - robot-brazo ?rc - robot-cesta ?l - location ?p - pobject)
    :precondition (and (at-robot ?rb ?l)
                       (at-robot ?rc ?l)
                       (holding ?rc ?p)
                       (not (holding ?rb ?p))
                       (not (busy-r ?rb))
                       )
    :effect (and (not (holding ?rc ?p))
                 (holding ?rb ?p)
                 (busy-r ?rb)))

  (:action TAKE-FROM-NEST-L
    :parameters (?rb - robot-brazo ?rc - robot-cesta ?l - location ?p - pobject)
    :precondition (and (at-robot ?rb ?l)
                       (at-robot ?rc ?l)
                       (holding ?rc ?p)
                       (not (holding ?rb ?p))
                       (not (busy-l ?rb))
                       )
    :effect (and (not (holding ?rc ?p))
                 (holding ?rb ?p)
                 (busy-l ?rb)))
  
  (:action PUT-IN-NEST-R
    :parameters (?rb - robot-brazo ?rc - robot-cesta ?l - location ?p - pobject)
    :precondition (and (at-robot ?rb ?l)
                       (at-robot ?rc ?l)
                       (holding ?rb ?p)
                       (busy-r ?rb)
                       (not (holding ?rc ?p))
                       )
    :effect (and (not (holding ?rb ?p))
                 (holding ?rc ?p)
                 (not (busy-r ?rb)))
  )
  
  (:action PUT-IN-NEST-L
    :parameters (?rb - robot-brazo ?rc - robot-cesta ?l - location ?p - pobject)
    :precondition (and (at-robot ?rb ?l)
                       (at-robot ?rc ?l)
                       (holding ?rb ?p)
                       (busy-l ?rb)
                       (not (holding ?rc ?p))
                       )
    :effect (and (not (holding ?rb ?p))
                 (holding ?rc ?p)
                 (not (busy-l ?rb)))
  )
)

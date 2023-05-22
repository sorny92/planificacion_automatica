(define (domain robots)
    (:requirements :strips :typing :fluents)
  (:types
     location pobject robot - object
     robot-brazo - robot
     robot-cesta - robot)

  (:predicates (at-robot ?r - robot ?l - location)
	           (at-pobject ?p - pobject ?l - location)
               (holding ?r - robot ?p - pobject)
               (connected ?l - location ?l1 - location)
               )
  (:functions
    (robot-capacity ?cap - pobject)
    )

  (:action MOVE
	   :parameters (?r - robot ?l - location ?l1 - location)
	   :precondition (and (at-robot ?r ?l)
 			              (connected ?l ?l1))
	   :effect (and (at-robot ?r ?l1)
			        (not (at-robot ?r ?l))))

  (:action PICK-UP
    :parameters (?r - robot-brazo ?l - location ?p - pobject)
    :precondition (and (at-robot ?r ?l)
                       (at-pobject ?p ?l)
                       (not (holding ?r ?p))
                       (> (robot-capacity ?p) 0)
                       )
    :effect (and (not (at-pobject ?p ?l))
                 (holding ?r ?p)
                 (decrease (robot-capacity) 1))

  (:action PUT-DOWN
	   :parameters (?r - robot ?l - location ?p - pobject)
	   :precondition (and (at-robot ?r ?l)
			              (holding ?r ?p))
	   :effect (and (not (holding ?r ?p))
		                	(at-pobject ?p ?l)
		                	(increase (robot-capacity) 1)))
  )
  
  (:action TAKE-FROM-NEST
    :parameters (?rb - robot-brazo ?rc - robot-cesta ?l - location ?p - pobject)
    :precondition (and (at-robot ?rb ?l)
                       (at-robot ?rc ?l)
                       (holding ?rc ?p)
                       (not (holding ?rb ?p))
                       (> (robot-capacity ?p) 0)
                       )
    :effect (and (not (holding ?rc ?p))
                 (holding ?rb ?p)
                 (decrease (robot-capacity) 1))
  )
  
    (:action PUT-IN-NEST
    :parameters (?rb - robot-brazo ?rc - robot-cesta ?l - location ?p - pobject)
    :precondition (and (at-robot ?rb ?l)
                       (at-robot ?rc ?l)
                       (holding ?rb ?p)
                       (not (holding ?rc ?p))
                       )
    :effect (and (not (holding ?rb ?p))
                 (holding ?rc ?p)
                 (increase (robot-capacity) 1))
  )

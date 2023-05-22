(define (domain elevators)
    (:requirements :strips :typing :fluents) 
  (:types floor block movable - object
          elevator person - movable
          fast-elevator slow-elevator - elevator)
  
  (:predicates (at-floor ?m - movable ?f - floor)
               (at-elevator ?p - person ?l - elevator)
               (part-of ?e - elevator ?b - block)
               (serves ?e - elevator ?f - floor)
               )
  (:functions
           (elevator-capacity ?cap - elevator))

  (:action GET-IN
	   :parameters (?p - person ?e - elevator ?f - floor)
	   :precondition (and (at-floor ?p ?f)
 			              (at-floor ?e ?f)
 			              (> (elevator-capacity ?e) 0)
 			              )
	   :effect (and (at-elevator ?p ?e)
                    (not (at-floor ?p ?f))
                    (decrease (elevator-capacity ?e) 1)))

  (:action GET-OUT
	   :parameters (?p - person ?e - elevator ?f - floor)
	   :precondition (and (at-elevator ?p ?e)
 			              (at-floor ?e ?f)
 			              )
	   :effect (and (not (at-elevator ?p ?e))
                    (at-floor ?p ?f)
                    (increase (elevator-capacity ?e) 1)))

  (:action MOVE----------------------
	   :parameters (?e - elevator ?f1 - floor ?f2 - floor)
	   :precondition (and (serves ?e ?f1)
                          (serves ?e ?f2)
                          (at-floor ?e ?f1)
                          )
	   :effect (and (not (at-floor ?e ?f1))
                         (at-floor ?e ?f2)))
)

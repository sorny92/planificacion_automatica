(define (domain elevators)
    (:requirements :strips :typing) 
  (:types floor block movable - object
          elevator person - movable
          fast-elevator slow-elevator - elevator)
  
  (:predicates (at-floor ?m - movable ?f - floor)
               (at-elevator ?p - person ?l - elevator)
               (part-of ?e - elevator ?b - block)
               (serves ?e - elevator ?f - floor)
               )

  (:action GET-IN
	   :parameters (?p - person ?e - elevator ?f - floor)
	   :precondition (and (at-floor ?p ?f)
 			              (at-floor ?e ?f)
 			              )
	   :effect (and (at-elevator ?p ?e)
                    (not (at-floor ?p ?f))))

  (:action GET-OUT
	   :parameters (?p - person ?e - elevator ?f - floor)
	   :precondition (and (at-elevator ?p ?e)
 			              (at-floor ?e ?f)
 			              )
	   :effect (and (not (at-elevator ?p ?e))
                    (at-floor ?p ?f)))

  (:action MOVE----------------------
	   :parameters (?e - elevator ?f1 - floor ?f2 - floor)
	   :precondition (and (serves ?e ?f1)
                          (serves ?e ?f2)
                          (at-floor ?e ?f1)
                          )
	   :effect (and (not (at-floor ?e ?f1))
                         (at-floor ?e ?f2)))
)

(define (domain elevators)
    (:requirements :strips :typing :fluents :durative-actions) 
  (:types floor block movable - object
          elevator person - movable
          fast-elevator slow-elevator - elevator)
  
  (:predicates (at-floor ?m - movable ?f - floor)
               (at-elevator ?p - person ?l - elevator)
               (part-of ?e - elevator ?b - block)
               (serves ?e - elevator ?f - floor)
               (above ?f1 - floor ?f2 - floor)
               )
  (:functions
           (elevator-capacity ?cap - elevator)
           (distance ?f1 - floor ?f2 - floor)
           (time-per-floor ?e - elevator)
           (up-warm-up-time ?e - elevator)
           (down-warm-up-time ?e - elevator)
           )

  (:durative-action GET-IN
	   :parameters (?p - person ?e - elevator ?f - floor)
	   :duration (= ?duration 2)
	   :condition (and (at start (at-floor ?p ?f))
                       (over all (at-floor ?e ?f))
 			           (at start (> (elevator-capacity ?e) 0))
 			              )
	   :effect (and (at end   (at-elevator ?p ?e))
                    (at start (not (at-floor ?p ?f)))
                    (at start (decrease (elevator-capacity ?e) 1))))

  (:durative-action GET-OUT
	   :parameters (?p - person ?e - elevator ?f - floor)
	   :duration (= ?duration 2)
	   :condition (and (at start (at-elevator ?p ?e))
                       (over all (at-floor ?e ?f))
 			              )
	   :effect (and (at start (not (at-elevator ?p ?e)))
                    (at end   (at-floor ?p ?f))
                    (at start (increase (elevator-capacity ?e) 1))))

  (:durative-action MOVE-UP---------------------
	   :parameters (?e - elevator ?f1 - floor ?f2 - floor)
	   :duration (= ?duration (+ (up-warm-up-time ?e) (* (time-per-floor ?e) (distance ?f1 ?f2))))
	   :condition (and (over all (serves ?e ?f1))
                       (over all (serves ?e ?f2))
                       (at start (at-floor ?e ?f1))
                       (at start (not (above ?f1 ?f2)))
                          )
	   :effect (and (at start (not (at-floor ?e ?f1)))
                    (at end (at-floor ?e ?f2))))

  (:durative-action MOVE-DOWN---------------------
	   :parameters (?e - elevator ?f1 - floor ?f2 - floor)
	   :duration (= ?duration (+ (down-warm-up-time ?e) (* (time-per-floor ?e) (distance ?f1 ?f2))))
	   :condition (and (over all (serves ?e ?f1))
                       (over all (serves ?e ?f2))
                       (at start (at-floor ?e ?f1))
                       (at start (above ?f1 ?f2))
                          )
	   :effect (and (at start (not (at-floor ?e ?f1)))
                    (at end (at-floor ?e ?f2))))
)

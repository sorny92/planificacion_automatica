(define (problem p01) (:domain elevators)
  (:objects p0 p1 p2 p3 p4 - person
            f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 - floor
            slow-elev1 slow-elev2 slow-elev3 - slow-elevator
            fast-elev - fast-elevator
            b1 b2 b3 - block
            )
  (:init
       (at-floor p0 f2)
       (at-floor p1 f4)
       (at-floor p2 f1)
       (at-floor p3 f8)
       (at-floor p4 f1)
       (= (elevator-capacity slow-elev1) 2)
       (= (elevator-capacity slow-elev2) 2)
       (= (elevator-capacity slow-elev3) 2)
       (= (elevator-capacity fast-elev) 3)
       
       (serves slow-elev1 f0)
       (serves slow-elev1 f1)
       (serves slow-elev1 f2)
       (serves slow-elev1 f3)
       (serves slow-elev1 f4)
       
       (serves slow-elev2 f4)
       (serves slow-elev2 f5)
       (serves slow-elev2 f6)
       (serves slow-elev2 f7)
       (serves slow-elev2 f8)

       (serves slow-elev3 f8)
       (serves slow-elev3 f9)
       (serves slow-elev3 f10)
       (serves slow-elev3 f11)
       (serves slow-elev3 f12)
       
       (serves fast-elev f0)
       (serves fast-elev f2)
       (serves fast-elev f4)
       (serves fast-elev f6)
       (serves fast-elev f8)
       (serves fast-elev f10)
       (serves fast-elev f12)

       (at-floor slow-elev1 f0)
       (at-floor slow-elev2 f4)
       (at-floor slow-elev3 f8)
       (at-floor fast-elev f0)
       )
  (:goal (and (at-floor p0 f3)
              (at-floor p1 f11)
              (at-floor p2 f12)
              (at-floor p3 f1)
              (at-floor p4 f9))))

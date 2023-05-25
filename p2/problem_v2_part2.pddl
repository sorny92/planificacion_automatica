(define (problem p01) (:domain elevators)
  (:objects p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 - person
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
       (at-floor p5 f1)
       (at-floor p6 f1)
       (at-floor p7 f1)
       (at-floor p8 f1)
       (at-floor p9 f1)   
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

       (= (time-per-floor slow-elev1) 8)
       (= (time-per-floor slow-elev2) 8)
       (= (time-per-floor slow-elev3) 8)
       (= (up-warm-up-time slow-elev1) 4)
       (= (up-warm-up-time slow-elev2) 4)
       (= (up-warm-up-time slow-elev3) 4)
       (= (down-warm-up-time slow-elev1) 4)
       (= (down-warm-up-time slow-elev2) 4)
       (= (down-warm-up-time slow-elev3) 4)
       
       (= (time-per-floor fast-elev) 1)
       (= (up-warm-up-time fast-elev) 9)
       (= (down-warm-up-time fast-elev) 8)
       
       (above f12 f11)
       (above f12 f10)
       (above f12 f9)
       (above f12 f8)
       (above f12 f7)
       (above f12 f6)
       (above f12 f5)
       (above f12 f4)
       (above f12 f3)
       (above f12 f2)
       (above f12 f1)
       (above f12 f0)

       (above f11 f10)
       (above f11 f9)
       (above f11 f8)
       (above f11 f7)
       (above f11 f6)
       (above f11 f5)
       (above f11 f4)
       (above f11 f3)
       (above f11 f2)
       (above f11 f1)
       (above f11 f0)
       
       (above f10 f9)
       (above f10 f8)
       (above f10 f7)
       (above f10 f6)
       (above f10 f5)
       (above f10 f4)
       (above f10 f3)
       (above f10 f2)
       (above f10 f1)
       (above f10 f0)
       
       (above f9 f8)
       (above f9 f7)
       (above f9 f6)
       (above f9 f5)
       (above f9 f4)
       (above f9 f3)
       (above f9 f2)
       (above f9 f1)
       (above f9 f0)
       
       (above f8 f7)
       (above f8 f6)
       (above f8 f5)
       (above f8 f4)
       (above f8 f3)
       (above f8 f2)
       (above f8 f1)
       (above f8 f0)

       (above f7 f6)
       (above f7 f5)
       (above f7 f4)
       (above f7 f3)
       (above f7 f2)
       (above f7 f1)
       (above f7 f0)

       (above f6 f5)
       (above f6 f4)
       (above f6 f3)
       (above f6 f2)
       (above f6 f1)
       (above f6 f0)

       (above f5 f4)
       (above f5 f3)
       (above f5 f2)
       (above f5 f1)
       (above f5 f0)

       (above f4 f3)
       (above f4 f2)
       (above f4 f1)
       (above f4 f0)

       (above f3 f2)
       (above f3 f1)
       (above f3 f0)

       (above f2 f1)
       (above f2 f0)

       (above f1 f0)
              
       (= (distance f0 f1) 1)
       (= (distance f0 f2) 2)
       (= (distance f0 f3) 3)
       (= (distance f0 f4) 4)
       (= (distance f0 f5) 5)
       (= (distance f0 f6) 6)
       (= (distance f0 f7) 7)
       (= (distance f0 f8) 8)
       (= (distance f0 f9) 9)
       (= (distance f0 f10) 10)
       (= (distance f0 f11) 11)
       (= (distance f0 f12) 12)

       (= (distance f1 f0) 1)
       (= (distance f1 f2) 1)
       (= (distance f1 f3) 2)
       (= (distance f1 f4) 3)
       (= (distance f1 f5) 4)
       (= (distance f1 f6) 5)
       (= (distance f1 f7) 6)
       (= (distance f1 f8) 7)
       (= (distance f1 f9) 8)
       (= (distance f1 f10) 9)
       (= (distance f1 f11) 10)
       (= (distance f1 f12) 11)

       (= (distance f2 f0) 2)
       (= (distance f2 f1) 1)
       (= (distance f2 f3) 1)
       (= (distance f2 f4) 2)
       (= (distance f2 f5) 3)
       (= (distance f2 f6) 4)
       (= (distance f2 f7) 5)
       (= (distance f2 f8) 6)
       (= (distance f2 f9) 7)
       (= (distance f2 f10) 8)
       (= (distance f2 f11) 9)
       (= (distance f2 f12) 10)

       (= (distance f3 f0) 3)
       (= (distance f3 f1) 2)
       (= (distance f3 f2) 1)
       (= (distance f3 f4) 1)
       (= (distance f3 f5) 2)
       (= (distance f3 f6) 3)
       (= (distance f3 f7) 4)
       (= (distance f3 f8) 5)
       (= (distance f3 f9) 6)
       (= (distance f3 f10) 7)
       (= (distance f3 f11) 8)
       (= (distance f3 f12) 9)

       (= (distance f4 f0) 4)
       (= (distance f4 f1) 3)
       (= (distance f4 f2) 2)
       (= (distance f4 f3) 1)
       (= (distance f4 f5) 1)
       (= (distance f4 f6) 2)
       (= (distance f4 f7) 3)
       (= (distance f4 f8) 4)
       (= (distance f4 f9) 5)
       (= (distance f4 f10) 6)
       (= (distance f4 f11) 7)
       (= (distance f4 f12) 8)

       (= (distance f5 f0) 5)
       (= (distance f5 f1) 4)
       (= (distance f5 f2) 3)
       (= (distance f5 f3) 2)
       (= (distance f5 f4) 1)
       (= (distance f5 f6) 1)
       (= (distance f5 f7) 2)
       (= (distance f5 f8) 3)
       (= (distance f5 f9) 4)
       (= (distance f5 f10) 5)
       (= (distance f5 f11) 6)
       (= (distance f5 f12) 7)

       (= (distance f6 f0) 6)
       (= (distance f6 f1) 5)
       (= (distance f6 f2) 4)
       (= (distance f6 f3) 3)
       (= (distance f6 f4) 2)
       (= (distance f6 f5) 1)
       (= (distance f6 f7) 1)
       (= (distance f6 f8) 2)
       (= (distance f6 f9) 3)
       (= (distance f6 f10) 4)
       (= (distance f6 f11) 5)
       (= (distance f6 f12) 6)

       (= (distance f7 f0) 7)
       (= (distance f7 f1) 6)
       (= (distance f7 f2) 5)
       (= (distance f7 f3) 4)
       (= (distance f7 f4) 3)
       (= (distance f7 f5) 2)
       (= (distance f7 f6) 1)
       (= (distance f7 f8) 1)
       (= (distance f7 f9) 2)
       (= (distance f7 f10) 3)
       (= (distance f7 f11) 4)
       (= (distance f7 f12) 5)

       (= (distance f8 f0) 8)
       (= (distance f8 f1) 7)
       (= (distance f8 f2) 6)
       (= (distance f8 f3) 5)
       (= (distance f8 f4) 4)
       (= (distance f8 f5) 3)
       (= (distance f8 f6) 2)
       (= (distance f8 f7) 1)
       (= (distance f8 f9) 1)
       (= (distance f8 f10) 2)
       (= (distance f8 f11) 3)
       (= (distance f8 f12) 4)

       (= (distance f9 f0) 9)
       (= (distance f9 f1) 8)
       (= (distance f9 f2) 7)
       (= (distance f9 f3) 6)
       (= (distance f9 f4) 5)
       (= (distance f9 f5) 4)
       (= (distance f9 f6) 3)
       (= (distance f9 f7) 2)
       (= (distance f9 f8) 1)
       (= (distance f9 f10) 1)
       (= (distance f9 f11) 2)
       (= (distance f9 f12) 3)

       (= (distance f10 f0) 10)
       (= (distance f10 f1) 9)
       (= (distance f10 f2) 8)
       (= (distance f10 f3) 7)
       (= (distance f10 f4) 6)
       (= (distance f10 f5) 5)
       (= (distance f10 f6) 4)
       (= (distance f10 f7) 3)
       (= (distance f10 f8) 2)
       (= (distance f10 f9) 1)
       (= (distance f10 f11) 1)
       (= (distance f10 f12) 2)

       (= (distance f11 f0) 11)
       (= (distance f11 f1) 10)
       (= (distance f11 f2) 9)
       (= (distance f11 f3) 8)
       (= (distance f11 f4) 7)
       (= (distance f11 f5) 6)
       (= (distance f11 f6) 5)
       (= (distance f11 f7) 4)
       (= (distance f11 f8) 3)
       (= (distance f11 f9) 2)
       (= (distance f11 f10) 1)
       (= (distance f11 f12) 1)

       (= (distance f12 f0) 12)
       (= (distance f12 f1) 11)
       (= (distance f12 f2) 10)
       (= (distance f12 f3) 9)
       (= (distance f12 f4) 8)
       (= (distance f12 f5) 7)
       (= (distance f12 f6) 6)
       (= (distance f12 f7) 5)
       (= (distance f12 f8) 4)
       (= (distance f12 f9) 3)
       (= (distance f12 f10) 2)
       (= (distance f12 f11) 1)
       )
  (:goal (and (at-floor p0 f3)
              (at-floor p1 f11)
              (at-floor p2 f12)
              (at-floor p3 f1)
              (at-floor p4 f9)
              (at-floor p5 f12)
              (at-floor p6 f12)
              (at-floor p7 f12)
              (at-floor p8 f12)
              (at-floor p9 f12)))
  (:metric minimize (total-time))
)

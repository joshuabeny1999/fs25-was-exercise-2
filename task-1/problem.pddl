(define (problem scheduling-problem)
(:domain maintenance-scheduling)
  (:objects
    inhabitant1 inhabitant2 inhabitant3 inhabitant4 inhabitant5
    inhabitant6 inhabitant7 inhabitant8 inhabitant9 inhabitant10 - inhabitant

    room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room

    am9 am915 am930 am945 am1000 am1015 am1030 am1045 am1100 am1115 am1130 - time
  )
  (:init
    ;; Inhabitants’ available time slots (with overlapping options):
    (available inhabitant1 am9)
    (available inhabitant1 am915)
    
    (available inhabitant2 am9)
    (available inhabitant2 am930)
    
    (available inhabitant3 am930)
    (available inhabitant3 am945)
    
    (available inhabitant4 am945)
    (available inhabitant4 am1000)
    
    (available inhabitant5 am1000)
    (available inhabitant5 am1015)
    
    (available inhabitant6 am1015)
    
    (available inhabitant7 am1000)
    (available inhabitant7 am1030)
    (available inhabitant7 am1045)
    (available inhabitant7 am1100)
    
    (available inhabitant8 am1045)
    (available inhabitant8 am1100)
    
    (available inhabitant9 am1100)

    (available inhabitant10 am1115)
    (available inhabitant10 am1130)
    
    ;; Room assignments for each inhabitant:
    (roomFor inhabitant1 room1)
    (roomFor inhabitant2 room2)
    (roomFor inhabitant3 room3)
    (roomFor inhabitant4 room4)
    (roomFor inhabitant5 room5)
    (roomFor inhabitant6 room6)
    (roomFor inhabitant7 room7)
    (roomFor inhabitant8 room8)
    (roomFor inhabitant9 room9)
    (roomFor inhabitant10 room10)
    
    ;; All time slots are initially free:
    (time-slot-free am9)
    (time-slot-free am915)
    (time-slot-free am930)
    (time-slot-free am945)
    (time-slot-free am1000)
    (time-slot-free am1015)
    (time-slot-free am1030)
    (time-slot-free am1045)
    (time-slot-free am1100)
    (time-slot-free am1115)
    (time-slot-free am1130)
  )
  (:goal (and
           (scheduled inhabitant1)
           (scheduled inhabitant2)
           (scheduled inhabitant3)
           (scheduled inhabitant4)
           (scheduled inhabitant5)
           (scheduled inhabitant6)
           (scheduled inhabitant7)
           (scheduled inhabitant8)
           (scheduled inhabitant9)
           (scheduled inhabitant10)
         ))
)
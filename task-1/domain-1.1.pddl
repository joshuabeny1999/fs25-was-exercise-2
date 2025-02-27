(define (domain maintenance-scheduling)
  (:requirements :strips :typing)
  (:types inhabitant room time)
  
  (:predicates 
    (available ?i - inhabitant ?t - time)   ; Inhabitant ?i can arrive at time ?t
    (time-slot-free ?t - time)              ; The time slot ?t is not yet used
    (roomFor ?i - inhabitant ?r - room)       ; Inhabitant ?i is assigned room ?r
    (scheduled ?i - inhabitant)             ; Inhabitant ?i has been set up
  )
  
  (:action showRoom
    :parameters (?t - time ?i - inhabitant ?r - room)
    :precondition (and
                    (available ?i ?t)
                    (time-slot-free ?t)
                    (roomFor ?i ?r))
    :effect (and
             (scheduled ?i)
             (not (time-slot-free ?t)))
  )
)
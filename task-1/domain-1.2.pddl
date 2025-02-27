(define (domain maintenance-scheduling)
  (:requirements :strips :typing)
  (:types inhabitant room time)
  
  (:predicates 
    (available ?i - inhabitant ?t - time)   ; Inhabitant ?i can arrive at time ?t
    (time-slot-free ?t - time)              ; The time slot ?t is not yet used and the worker is available
    (unlocked ?t - time ?r - room)          ; The room ?r has ben unlocked at time ?t
    (joined ?t - time ?r - room)            ; The room ?r has ben joined at time ?t
    (roomFor ?i - inhabitant ?r - room)     ; Inhabitant ?i is assigned room ?r
    (scheduled ?i - inhabitant)             ; Inhabitant ?i has been set up
  )
  
  (:action unlock
    :parameters (?t - time ?i - inhabitant ?r - room)
    :precondition (and
                    (available ?i ?t)
                    (time-slot-free ?t)
                    (roomFor ?i ?r))
    :effect (and 
                (unlocked ?t ?r)
                (not (time-slot-free ?t)))
  )
  
  (:action join
    :parameters (?t - time ?r - room ?i - inhabitant)
    :precondition (and 
                    (unlocked ?t ?r)
                    (roomFor ?i ?r))
    :effect (joined ?t ?r)
  )

  (:action showRoom
    :parameters (?t - time ?r - room ?i - inhabitant)
    :precondition (and (joined ?t ?r)
                       (available ?i ?t)
                       (roomFor ?i ?r))
    :effect (scheduled ?i)
  )
 
)
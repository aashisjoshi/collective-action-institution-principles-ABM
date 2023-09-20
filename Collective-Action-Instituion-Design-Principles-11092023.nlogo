extensions [
  profiler  ; for efficient coding
]

globals [
  impact-periodicity
  impact-severity
  impact-duration
  starting-resource-production-capacity
  ; starting-metabolic-cost
  starting-travel-cost
  starting-exertion-cost
  number-of-people
  number-of-resource-patches
  number-of-resource-units
  max-number-of-resource-banks
  minimum-acceptable-energy-balance
  impact-period?
  impact-event-time-onset
  resource-bank-operation-cost-per-decision-period
  resource-bank-lifetime
  energy-tax-rate
  energy-funds-collected-this-period
  total-energy-funds-collected
  total-energy-funds-distributed
  duration-resource-bank-in-operation
  resource-banks-in-operation?
  impact-event-resource-bank-overlap-count
  gini-index-each-tick
  lorenz-points
  number-of-births-this-tick
  number-perished-this-tick
  num-people-in-governing-group-perished
  num-people-not-in-governing-group-perished
  sufficiency-below-50%-reached?
  sufficiency-below-20%-reached?
  time-to-sufficiency-below-50%
  time-to-sufficiency-below-20%
  people-active-at-0.5k-ticks
  people-active-at-1.5k-ticks
  people-active-at-3k-ticks
  people-active-at-5k-ticks
  people-active-at-7.5k-ticks
  people-active-at-10k-ticks
  governing-group-active-at-0.5k-ticks
  governing-group-active-at-1.5k-ticks
  governing-group-active-at-3k-ticks
  governing-group-active-at-5k-ticks
  governing-group-active-at-7.5k-ticks
  governing-group-active-at-10k-ticks
  non-governing-group-active-at-0.5k-ticks
  non-governing-group-active-at-1.5k-ticks
  non-governing-group-active-at-3k-ticks
  non-governing-group-active-at-5k-ticks
  non-governing-group-active-at-7.5k-ticks
  non-governing-group-active-at-10k-ticks
  people-energy-balance-at-0.5k-ticks
  people-energy-balance-at-1.5k-ticks
  people-energy-balance-at-3k-ticks
  people-energy-balance-at-5k-ticks
  people-energy-balance-at-7.5k-ticks
  people-energy-balance-at-10k-ticks
  governing-group-energy-balance-at-0.5k-ticks
  governing-group-energy-balance-at-1.5k-ticks
  governing-group-energy-balance-at-3k-ticks
  governing-group-energy-balance-at-5k-ticks
  governing-group-energy-balance-at-7.5k-ticks
  governing-group-energy-balance-at-10k-ticks
  non-governing-group-energy-balance-at-0.5k-ticks
  non-governing-group-energy-balance-at-1.5k-ticks
  non-governing-group-energy-balance-at-3k-ticks
  non-governing-group-energy-balance-at-5k-ticks
  non-governing-group-energy-balance-at-7.5k-ticks
  non-governing-group-energy-balance-at-10k-ticks
  people-sufficiency-at-0.5k-ticks
  people-sufficiency-at-1.5k-ticks
  people-sufficiency-at-3k-ticks
  people-sufficiency-at-5k-ticks
  people-sufficiency-at-7.5k-ticks
  people-sufficiency-at-10k-ticks
  governing-group-sufficiency-at-0.5k-ticks
  governing-group-sufficiency-at-1.5k-ticks
  governing-group-sufficiency-at-3k-ticks
  governing-group-sufficiency-at-5k-ticks
  governing-group-sufficiency-at-7.5k-ticks
  governing-group-sufficiency-at-10k-ticks
  non-governing-group-sufficiency-at-0.5k-ticks
  non-governing-group-sufficiency-at-1.5k-ticks
  non-governing-group-sufficiency-at-3k-ticks
  non-governing-group-sufficiency-at-5k-ticks
  non-governing-group-sufficiency-at-7.5k-ticks
  non-governing-group-sufficiency-at-10k-ticks
  gini-index-at-0.5k-ticks
  gini-index-at-1.5k-ticks
  gini-index-at-3k-ticks
  gini-index-at-5k-ticks
  gini-index-at-7.5k-ticks
  gini-index-at-10k-ticks
  energy-funds-for-resource-banks-at-0.5k-ticks
  energy-funds-for-resource-banks-at-1.5k-ticks
  energy-funds-for-resource-banks-at-3k-ticks
  energy-funds-for-resource-banks-at-5k-ticks
  energy-funds-for-resource-banks-at-7.5k-ticks
  energy-funds-for-resource-banks-at-10k-ticks
  mean-distance-from-center-of-active-people-at-0.5k-ticks
  mean-distance-from-center-of-active-people-at-1.5k-ticks
  mean-distance-from-center-of-active-people-at-3k-ticks
  mean-distance-from-center-of-active-people-at-5k-ticks
  mean-distance-from-center-of-active-people-at-7.5k-ticks
  mean-distance-from-center-of-active-people-at-10k-ticks
  mean-distance-from-center-of-active-governing-people-at-0.5k-ticks
  mean-distance-from-center-of-active-governing-people-at-1.5k-ticks
  mean-distance-from-center-of-active-governing-people-at-3k-ticks
  mean-distance-from-center-of-active-governing-people-at-5k-ticks
  mean-distance-from-center-of-active-governing-people-at-7.5k-ticks
  mean-distance-from-center-of-active-governing-people-at-10k-ticks
  mean-distance-from-center-of-active-non-governing-people-at-0.5k-ticks
  mean-distance-from-center-of-active-non-governing-people-at-1.5k-ticks
  mean-distance-from-center-of-active-non-governing-people-at-3k-ticks
  mean-distance-from-center-of-active-non-governing-people-at-5k-ticks
  mean-distance-from-center-of-active-non-governing-people-at-7.5k-ticks
  mean-distance-from-center-of-active-non-governing-people-at-10k-ticks
  energy-funds-distributed-by-resource-bank-at-0.5k-ticks
  energy-funds-distributed-by-resource-bank-at-1.5k-ticks
  energy-funds-distributed-by-resource-bank-at-3k-ticks
  energy-funds-distributed-by-resource-bank-at-5k-ticks
  energy-funds-distributed-by-resource-bank-at-7.5k-ticks
  energy-funds-distributed-by-resource-bank-at-10k-ticks
  duration-resource-bank-in-operation-at-0.5k-ticks
  duration-resource-bank-in-operation-at-1.5k-ticks
  duration-resource-bank-in-operation-at-3k-ticks
  duration-resource-bank-in-operation-at-5k-ticks
  duration-resource-bank-in-operation-at-7.5k-ticks
  duration-resource-bank-in-operation-at-10k-ticks
  mean-resource-access-of-people-at-0.5k-ticks
  mean-resource-access-of-people-at-1.5k-ticks
  mean-resource-access-of-people-at-3k-ticks
  mean-resource-access-of-people-at-5k-ticks
  mean-resource-access-of-people-at-7.5k-ticks
  mean-resource-access-of-people-at-10k-ticks
  impact-event-resource-bank-overlap-duration-at-0.5k-ticks
  impact-event-resource-bank-overlap-duration-at-1.5k-ticks
  impact-event-resource-bank-overlap-duration-at-3k-ticks
  impact-event-resource-bank-overlap-duration-at-5k-ticks
  impact-event-resource-bank-overlap-duration-at-7.5k-ticks
  impact-event-resource-bank-overlap-duration-at-10k-ticks
  governing-group-size
  non-governing-group-size
]

breed [ people a-person ]
breed [ resource-units a-resource-unit ]
breed [ resource-banks a-resource-bank ]

people-own [
  home-patch
  starting-resource-access
  resource-access
  metabolic-cost
  travel-cost
  exertion-cost
  starting-energy-balance
  energy-balance
  desired-energy-balance
  desired-energy-balance-attained?
  in-governing-group?
  target-resource-patch
  target-resource-bank-patch
  resource-patch-targeted?
  resource-bank-targeted?
  target-resource-patch-reached?
  resource-units-harvested
  short-on-energy?
  num-visits-to-resource-banks
  energy-surplus-to-donate
  energy-funds-donated-this-tick
  energy-funds-donated-this-period?
  extent-of-energy-funds-obtained
  return-home?
  en-route-to-donate?
  perished?
  at-home?
  ticks-outside-home
  distance-from-center
]

patches-own [
  resource-patch?
  resource-production-capacity
  resource-bank-patch?
  resource-bank-region?
]

resource-units-own [
  energy-gain-per-unit
  energy-cost-per-unit
  impact-sensitivity
  harvested?
  harvest-time
]

resource-banks-own [
  energy-funds-received-this-tick
  energy-funds-distributed-this-tick
  energy-funds-available
  setup-time
  lifetime
  functional-extent
]

to setup
  clear-all
  if profile? [
    profiler:reset         ; clear the data
    profiler:start         ; start profiling
  ]
  setup-parameters
  setup-resource-bank-region
  setup-resource-patches
  setup-people
  reset-ticks
end

to setup-parameters
  set-default-shape resource-units "plant"
  set-default-shape people "person"
  set-default-shape resource-banks "house"
  set impact-periodicity 25
  set impact-severity 0.7
  set impact-duration impact-periodicity
  set starting-resource-production-capacity 5
  ; set starting-metabolic-cost 0.2
  set starting-travel-cost ( starting-metabolic-cost / 5 )
  set starting-exertion-cost ( starting-metabolic-cost / 4 )
  set minimum-acceptable-energy-balance 400
  set impact-period? false
  set resource-bank-lifetime decision-period
  set sufficiency-below-50%-reached? false
  set sufficiency-below-20%-reached? false
  set lorenz-points [ ]
  set resource-bank-operation-cost-per-decision-period ( ( population / 20 ) * ( resource-bank-operation-cost / 2 ) * minimum-acceptable-energy-balance * decision-period )
  ;; for BehaviorSpace experiments:
  ; set graphs-on? false
;  set resource-area-size 3
;  set population 400 ; one-of [ 200 400 ]
;  set social-inequity-index random-float 1
;  set decision-based-on-experience-of "governing group" ; one-of [ "governing group" "non-governing group" "everyone" ]
;  set decision-threshold random-float 100
;  set resource-impact-sensitivity 0.97
;  set starting-metabolic-cost 0.2 ; precision random-float 0.5 2
;  ifelse random-float 1 >= 0.95 [ set operate-resource-banks? false ] [ set operate-resource-banks? true ]
;  set tax-policy one-of [ "flat rate" "progressive" ]
;  set instant-resource-bank-access false ; one-of [ true false ]
;  set aggregation-technology one-of [ "summation" "threshold" ]
;  set resource-distribution "centralized" ; one-of [ "centralized" "scattered" ]
;  set decision-period ( 1 + random-float ( 2 * ( impact-periodicity + impact-duration ) ) )
;  set resource-bank-lifetime round decision-period ; 200
;  set resource-bank-operation-cost random-float 1 ; 0.3
;  set resource-bank-operation-cost-per-decision-period ( ( population / 20 )  * ( resource-bank-operation-cost / 6 ) * minimum-acceptable-energy-balance * decision-period )
end

to setup-resource-bank-region
  ask patches [ set resource-bank-region? false set resource-patch? false set pcolor 38 ]
  let resource-patch-location ( max-pxcor + resource-area-size ) / 2
  ask patches with [ distance patch 0 0 > ( resource-patch-location - 0.5 ) and distance patch 0 0 < ( resource-patch-location + 0.5 ) ] [
    set resource-bank-region? true
    set pcolor 78
  ]
end

to setup-people
  let world-diagonal sqrt ( max-pxcor ^ 2 + max-pycor ^ 2 )
  ask n-of population patches with [ resource-patch? = false and resource-bank-region? = false and not any? turtles-here ] [
    sprout-people 1 [
      ; If social-inequity-index determines peoples' location, then set those with higher resource-access values closer to the resource region?
      set home-patch patch-here
      set resource-access precision random-float 1 2
      set color scale-color black resource-access 1 0
      set desired-energy-balance ( minimum-acceptable-energy-balance * exp ( resource-access ) )
      set starting-energy-balance precision ( minimum-acceptable-energy-balance + random-float ( desired-energy-balance - minimum-acceptable-energy-balance ) ) 2
      set energy-balance starting-energy-balance
      set exertion-cost starting-exertion-cost
      set distance-from-center distance patch 0 0
      set in-governing-group? false
      set resource-patch-targeted? false
      set resource-bank-targeted? false
      set target-resource-patch-reached? false
      set en-route-to-donate? false
      set perished? false
    ]
  ]
end

to setup-resource-patches
  if resource-distribution = "centralized" [
    ask patch 0 0 [
      ask patches with [ resource-bank-region? = false ] in-radius resource-area-size [
        sprout-resource-units starting-resource-production-capacity [
          set energy-gain-per-unit minimum-acceptable-energy-balance
          set energy-cost-per-unit ( minimum-acceptable-energy-balance / 20 )
          set impact-sensitivity ( resource-impact-sensitivity ) ^ ( 1 / 5 )
          set harvested? false
          set color green
          set resource-patch? true
          set resource-production-capacity starting-resource-production-capacity
          set pcolor 48
        ]
      ]
    ]
  ]
  if resource-distribution = "scattered" [
    let num-resource-patches 0
    ask patch 0 0 [
      set num-resource-patches ( count patches in-radius resource-area-size - 1 )
    ]
    ask n-of num-resource-patches patches with [ resource-bank-region? = false and not any? turtles-here ] [
      sprout-resource-units starting-resource-production-capacity [
        set energy-gain-per-unit minimum-acceptable-energy-balance
        set energy-cost-per-unit ( minimum-acceptable-energy-balance / 20 )
        set impact-sensitivity ( resource-impact-sensitivity ) ^ ( 1 / 5 )
        set harvested? false
        set color green
        set resource-patch? true
        set resource-production-capacity starting-resource-production-capacity
        set pcolor 48
      ]
    ]
  ]
end

to go
  ; no-display
  if ticks > 10000 [
      ; Stop at end of simulation
    if profile? [
      profiler:stop          ; stop profiling
      print profiler:report  ; view the results
    ]
    stop
  ]
  if count people with [ perished? = false ] = 0 [ stop ]
  reset-parameters
  schedule-impact-event
  update-impact-conditions
  regenerate-resource
  if ticks mod ( round decision-period ) = 0 [ form-governing-network ]
  do-metabolism
  if count resource-units > 0 [
    ask people with [ perished? = false and desired-energy-balance-attained? = false and return-home? = false ] [
      target-resource
      if count resource-banks > 0 [ obtain-energy-funds ]
      seek-resource
      harvest-resource
    ]
    if count resource-banks > 0 [ donate-to-resource-bank ]
    return-home
  ]
  if operate-resource-banks? = true [ operate-resource-banks ]
  ; update-lorenz-and-gini
  measure-some-milestones
  tick
end

to reset-parameters
  ask people [
    set resource-units-harvested 0
    set energy-funds-donated-this-tick 0
    if ticks mod ( round decision-period ) = 0 [ set energy-funds-donated-this-period? false ]
  ]
  set total-energy-funds-collected ( total-energy-funds-collected + energy-funds-collected-this-period + sum [ energy-funds-received-this-tick ] of resource-banks )
  set energy-funds-collected-this-period 0
  set number-of-births-this-tick 0
  set number-perished-this-tick 0
  ask resource-banks [
    ; print energy-funds-received-this-tick
    set energy-funds-received-this-tick 0
    ; print energy-funds-distributed-this-tick
    set energy-funds-distributed-this-tick 0
  ]
end

to schedule-impact-event
  ifelse impact-period? = false and ticks mod impact-periodicity = 0 [
    set impact-period? true
    set impact-event-time-onset ticks
  ]
  [
    if impact-period? = true [
      set impact-event-time-onset ( impact-event-time-onset + 1 )
      if impact-event-time-onset mod impact-duration = 0 [
        set impact-period? false
        set impact-event-time-onset 0
      ]
    ]
  ]
  if impact-period? = true and count resource-banks > 0 [
    set impact-event-resource-bank-overlap-count ( impact-event-resource-bank-overlap-count + 1 ) ]
end

to update-impact-conditions
  ifelse impact-period? = true [
  ; set impact-severity sin ( 180 * ( ticks mod decision-period ) / decision-period )
    ask patches [
      set resource-production-capacity ( starting-resource-production-capacity * ( 1 - impact-severity ) )
    ]
    ask people [
      set metabolic-cost ( starting-metabolic-cost * exp ( impact-severity ) )
      set travel-cost ( starting-travel-cost * exp ( impact-severity ) )
    ]
  ]
  [
    ask patches [ set resource-production-capacity starting-resource-production-capacity ]
    ask people [
      set metabolic-cost starting-metabolic-cost
      set travel-cost starting-travel-cost
    ]
  ]
end

to regenerate-resource
  ask resource-units with [ harvested? = true ] [
    if ( ticks - harvest-time ) >= ( 1 + tan ( impact-sensitivity * 90 ) ) [
    ; if ( ticks - harvest-time ) >= ( 1 + tan ( ( impact-severity ^ ( 1 / 5 ) ) * 90 ) ) [
      ; if resource-impact-sensitivity < ( impact-severity ^ ( 1 / 1 ) ) [
      set harvested? false
      show-turtle
      ; ]
    ]
  ]
end

to form-governing-network
  ask people with [ perished? = false and resource-access >= social-inequity-index ] [
    set in-governing-group? true
    set color red ; scale-color red resource-access 1 0
  ]
  ask people with [ perished? = false and resource-access < social-inequity-index ] [
    set in-governing-group? false
    set color violet ; scale-color violet resource-access 1 0
  ]
  set governing-group-size count people with [ in-governing-group? = true ]
  set non-governing-group-size count people with [ in-governing-group? = false ]
end

to do-metabolism
  ask people with [ perished? = false ] [
    ; Have to change the following formula; e.g. replace the denominator with a constant value such as 50
    ; otherwise the decision-period parameter is representing three mechanisms, and it's unrealistic to think it is related to more than two.
    ; And while we're at it, further 'deprecate' the resource bank cost parameter so as to have a wider range of values at which the bank can be set up.
    ; Rethink the formula below, the logic of it.
    let wear-and-tear ( exertion-cost * ticks-outside-home / ( impact-periodicity + impact-duration ) ) ; decision-period
    let energy-expense ( metabolic-cost + wear-and-tear )
    set energy-balance ( energy-balance - energy-expense )
    ifelse wear-and-tear >= metabolic-cost [ set return-home? true ] [ set return-home? false ]
    if energy-balance <= 0 [
      set energy-balance 0
      set perished? true
      hide-turtle
      set number-perished-this-tick ( number-perished-this-tick + 1 )
      ifelse in-governing-group? = true [ set num-people-in-governing-group-perished ( num-people-in-governing-group-perished + 1 ) ]
      [ set num-people-not-in-governing-group-perished ( num-people-not-in-governing-group-perished + 1 ) ]
    ]
    ifelse energy-balance >= desired-energy-balance [ set desired-energy-balance-attained? true ]
    [ set desired-energy-balance-attained? false ]
    if patch-here != home-patch [ set ticks-outside-home ( ticks-outside-home + 1 ) ]
    set label round energy-balance
  ]
end

to target-resource
  ; print "targeting"
  let energy-gain [ energy-gain-per-unit ] of one-of resource-units
  let energy-cost [ energy-cost-per-unit ] of one-of resource-units
  let decision-reference  desired-energy-balance ; minimum-acceptable-energy-balance
  if resource-patch-targeted? = false [
    if energy-balance < decision-reference or ticks mod ( round decision-period ) = 0 [
      if resource-distribution = "centralized" [
        set target-resource-patch max-one-of patches with [ resource-patch? = true ] [ count resource-units with [ harvested? = false ] ]
      ]
      if resource-distribution = "scattered" [
        set target-resource-patch min-one-of patches with [ resource-patch? = true and count resource-units with [ harvested? = false ] > 0 ] [ distance myself ]
      ]
      if target-resource-patch != nobody [ set resource-patch-targeted? true ]
      let target-resource-patch-distance distance target-resource-patch
      let energy-expense-estimate ( target-resource-patch-distance * ( metabolic-cost + travel-cost + resource-access * resource-production-capacity * energy-cost ) )
      ifelse energy-balance < minimum-acceptable-energy-balance or energy-balance < energy-expense-estimate [ set short-on-energy? true ] [ set short-on-energy? false ]
    ]
  ]
end

to obtain-energy-funds
  ifelse instant-resource-bank-access = true [
    let energy-funds-needed minimum-acceptable-energy-balance
    ask one-of resource-banks [
      ifelse energy-funds-available >= energy-funds-needed [
        ask myself [ set energy-balance ( energy-balance + energy-funds-needed )
          set short-on-energy? false
        ]
        set energy-funds-distributed-this-tick ( energy-funds-distributed-this-tick + energy-funds-needed )
        set energy-funds-available ( energy-funds-available - energy-funds-needed )
        set total-energy-funds-distributed ( total-energy-funds-distributed + energy-funds-distributed-this-tick )
      ]
      [
        ask myself [
          set energy-balance ( energy-balance + [ energy-funds-available ] of one-of resource-banks )
        ]
        set energy-funds-distributed-this-tick ( energy-funds-distributed-this-tick + energy-funds-available )
        set energy-funds-available 0
        set total-energy-funds-distributed ( total-energy-funds-distributed + energy-funds-distributed-this-tick )
      ]
    ]
  ]
  [
    if resource-patch-targeted? = true and short-on-energy? = true [
      if resource-bank-targeted? = false [
        set target-resource-bank-patch min-one-of patches with [ resource-bank-region? = true ] [ distance myself ]
        set resource-bank-targeted? true
      ]
      let energy-funds-needed minimum-acceptable-energy-balance
      ifelse target-resource-bank-patch != nobody [
        face target-resource-bank-patch
        forward 1
        set energy-balance ( energy-balance - travel-cost )
        if patch-here = target-resource-bank-patch [
          ; print "found"
          set num-visits-to-resource-banks ( num-visits-to-resource-banks + 1 )
          ask one-of resource-banks [
            ; print energy-funds-available
            ifelse energy-funds-available >= energy-funds-needed [
              ask myself [
                set energy-balance ( energy-balance + energy-funds-needed )
                set short-on-energy? false
              ]
              set energy-funds-distributed-this-tick ( energy-funds-distributed-this-tick + energy-funds-needed )
              set energy-funds-available ( energy-funds-available - energy-funds-needed )
              set total-energy-funds-distributed ( total-energy-funds-distributed + energy-funds-distributed-this-tick )
            ]
            [
              ask myself [
                set energy-balance ( energy-balance + [ energy-funds-available ] of one-of resource-banks )
              ]
              set energy-funds-distributed-this-tick ( energy-funds-distributed-this-tick + energy-funds-available )
              set energy-funds-available 0
              set total-energy-funds-distributed ( total-energy-funds-distributed + energy-funds-distributed-this-tick )
            ]
          ]
          set resource-bank-targeted? false
        ]
      ]
      [ set resource-bank-targeted? false ]
    ]
  ]
end

to seek-resource
  ; print "seeking"
  let resource-seek-reference minimum-acceptable-energy-balance ; desired-energy-balance
  if resource-patch-targeted? = true and target-resource-patch-reached? = false and energy-balance < resource-seek-reference
    and short-on-energy? = false [
    face target-resource-patch
    forward 1
    set energy-balance ( energy-balance - travel-cost )
    if energy-balance < 0 [ set energy-balance 0 ]
    if patch-here = target-resource-patch [
      set target-resource-patch-reached? true
      set resource-patch-targeted? false
    ]
  ]
end

to harvest-resource
  ; print "harvesting"
  let energy-gain [ energy-gain-per-unit ] of one-of resource-units
  let energy-cost [ energy-cost-per-unit ] of one-of resource-units
  if target-resource-patch-reached? = true [
    let harvest-capacity round ( resource-access * resource-production-capacity )
    ifelse count resource-units-here with [ harvested? = false ] >= harvest-capacity [
      set resource-units-harvested harvest-capacity
    ]
    [
      set resource-units-harvested count resource-units-here with [ harvested? = false ]
    ]
    set energy-balance ( energy-balance + resource-units-harvested * ( energy-gain - energy-cost ) )
    set target-resource-patch-reached? false
    ask n-of resource-units-harvested resource-units-here [
      set harvested? true
      set harvest-time ticks
      hide-turtle
    ]
  ]
end

to donate-to-resource-bank
  ifelse instant-resource-bank-access = true [
    ask people with [ perished? = false and energy-balance > minimum-acceptable-energy-balance ] [
      if tax-policy = "flat rate" [ set energy-surplus-to-donate ( 0.5 * ( energy-balance - minimum-acceptable-energy-balance ) ) ]
      if tax-policy = "progressive" [ set energy-surplus-to-donate ( resource-access * ( energy-balance - minimum-acceptable-energy-balance ) ) ]
      let energy-surplus-to-donate-this-time energy-surplus-to-donate
      if aggregation-technology = "summation" [ set energy-surplus-to-donate-this-time ( energy-surplus-to-donate * [ functional-extent ] of one-of resource-banks ) ]
      if aggregation-technology = "threshold" [ set energy-surplus-to-donate-this-time energy-surplus-to-donate ]
      ask one-of resource-banks [
        set energy-funds-received-this-tick ( energy-funds-received-this-tick + energy-surplus-to-donate-this-time )
        set energy-funds-available ( energy-funds-available + energy-surplus-to-donate-this-time )
      ]
      set energy-balance ( energy-balance - energy-surplus-to-donate-this-time )
      set energy-funds-donated-this-period? true
    ]
  ]
  [
    ask people with [ perished? = false and energy-balance > minimum-acceptable-energy-balance and resource-patch-targeted? = false and return-home? = false ] [
      let nearest-resource-bank-patch min-one-of patches with [ resource-bank-region? = true ] [ distance myself ]
      ifelse en-route-to-donate? = false [
        if ( energy-balance - minimum-acceptable-energy-balance ) > 0 [
          set en-route-to-donate? true
        ]
      ]
      [
        face nearest-resource-bank-patch
        forward 1
        set energy-balance ( energy-balance - travel-cost )
        if energy-balance < 0 [ set energy-balance 0 ]
        if one-of turtles-here = nearest-resource-bank-patch and energy-balance > minimum-acceptable-energy-balance [
          if tax-policy = "flat rate" [ set energy-surplus-to-donate ( 0.5 * ( energy-balance - minimum-acceptable-energy-balance ) ) ]
          if tax-policy = "progressive" [ set energy-surplus-to-donate ( resource-access * ( energy-balance - minimum-acceptable-energy-balance ) ) ]
          let energy-surplus-to-donate-this-time energy-surplus-to-donate
          if aggregation-technology = "summation" [ set energy-surplus-to-donate-this-time ( energy-surplus-to-donate * [ functional-extent ] of one-of resource-banks ) ]
          if aggregation-technology = "threshold" [ set energy-surplus-to-donate-this-time energy-surplus-to-donate ]
          ask one-of resource-banks [
            set energy-funds-received-this-tick ( energy-funds-received-this-tick + energy-surplus-to-donate-this-time )
            set energy-funds-available ( energy-funds-available + energy-surplus-to-donate-this-time )
          ]
          set energy-balance ( energy-balance - energy-surplus-to-donate-this-time )
          set energy-funds-donated-this-period? true
          set en-route-to-donate? false
        ]
      ]
    ]
  ]
end

to return-home
  ask people with [ perished? = false and return-home? = true and energy-balance >= minimum-acceptable-energy-balance ] [
    face home-patch
    forward 1
    set energy-balance ( energy-balance - travel-cost )
    if energy-balance < 0 [ set energy-balance 0 ]
    ifelse patch-here = home-patch [
      set at-home? true
      set return-home? false
      set ticks-outside-home 0
    ]
    [ set at-home? false ]
  ]
end

to operate-resource-banks
  ask resource-banks [ if ( ticks - setup-time ) >= round decision-period [
    let num-donors count people with [ perished? = false and energy-funds-donated-this-period? = true ]
    ask people with [ perished? = false and energy-funds-donated-this-period? = true ] [
      set energy-balance ( energy-balance + [ energy-funds-available ] of myself / num-donors )
    ]
    ask patches with [ resource-bank-region? = true ] [ set pcolor 78 ]
    die
  ] ]
  if ticks > 0 and ticks mod ( round decision-period ) = 0 [
    let resource-bank-decision-group [ ]
    if decision-based-on-experience-of = "governing group" [ set resource-bank-decision-group people with [ perished? = false and in-governing-group? = true ] ]
    if decision-based-on-experience-of = "non-governing group" [ set resource-bank-decision-group people with [ perished? = false and in-governing-group? = false ] ]
    if decision-based-on-experience-of = "everyone" [ set resource-bank-decision-group people with [ perished? = false ] ]
    let decision-reference minimum-acceptable-energy-balance
    if count resource-bank-decision-group with [ energy-balance < decision-reference ] >= ( decision-threshold / 100 * population ) [
      ask people with [ perished? = false and energy-balance > decision-reference ] [
        if tax-policy = "flat rate" [ set energy-surplus-to-donate ( 0.5 * ( energy-balance - minimum-acceptable-energy-balance ) ) ]
        if tax-policy = "progressive" [ set energy-surplus-to-donate ( resource-access * ( energy-balance - minimum-acceptable-energy-balance ) ) ]
        let energy-donation-to-setup-resource-banks energy-surplus-to-donate
        set energy-funds-collected-this-period ( energy-donation-to-setup-resource-banks + energy-funds-collected-this-period )
        set energy-balance ( energy-balance - energy-donation-to-setup-resource-banks )
        set energy-funds-donated-this-tick energy-donation-to-setup-resource-banks
      ]
      let excess-energy-funds 0
      if ( energy-funds-collected-this-period - resource-bank-operation-cost-per-decision-period ) > 0 [
        set excess-energy-funds ( energy-funds-collected-this-period - resource-bank-operation-cost-per-decision-period )
      ]
      if aggregation-technology = "summation" [
        ifelse energy-funds-collected-this-period >= resource-bank-operation-cost-per-decision-period [
          setup-a-resource-bank excess-energy-funds 1
        ]
        [
          let extent ( energy-funds-collected-this-period / resource-bank-operation-cost-per-decision-period )
          setup-a-resource-bank excess-energy-funds extent
        ]
      ]
      if aggregation-technology = "threshold" [
        if energy-funds-collected-this-period >= resource-bank-operation-cost-per-decision-period [
          setup-a-resource-bank excess-energy-funds 1
        ]
      ]
    ]
  ]
end

to setup-a-resource-bank [ funds extent ]
  ask one-of patches with [ resource-bank-region? = true and not any? turtles-here ] [
    sprout-resource-banks 1 [
      set lifetime resource-bank-lifetime
      set setup-time ticks
      set energy-funds-available funds
      set functional-extent extent
      hide-turtle
    ]
  ]
  ask patches with [ resource-bank-region? = true ] [
    set pcolor 75
  ]
end

to update-lorenz-and-gini
  let sorted-energy-balances sort [ energy-balance ] of people with [ perished? = false ]
  let total-energy-balance sum sorted-energy-balances
  let energy-balance-sum-so-far 0
  let index 0
  let gini-index-reserve 0
  set lorenz-points n-values count people with [ perished? = false ] [ 0 ]
  repeat count people with [ perished? = false ] [
    set energy-balance-sum-so-far ( energy-balance-sum-so-far + item index sorted-energy-balances )
    if total-energy-balance > 0 [
      set lorenz-points replace-item index lorenz-points ( ( energy-balance-sum-so-far / total-energy-balance ) * 100 )
      set index ( index + 1 )
      set gini-index-reserve ( gini-index-reserve + ( index / count people with [ perished? = false ] ) - ( energy-balance-sum-so-far / total-energy-balance ) )
      set gini-index-each-tick ( 2 * gini-index-reserve / count people with [ perished? = false ] )
    ]
  ]
end

to-report gini-index-this-tick
  let sorted-energy-balances sort [ energy-balance ] of people with [ perished? = false ]
  let total-energy-balance sum sorted-energy-balances
  let energy-balance-sum-so-far 0
  let index 0
  let gini-index-reserve 0
  repeat count people with [ perished? = false ] [
    set energy-balance-sum-so-far ( energy-balance-sum-so-far + item index sorted-energy-balances )
    if total-energy-balance > 0 [
      set index ( index + 1 )
      set gini-index-reserve ( gini-index-reserve + ( index / count people with [ perished? = false ] ) - ( energy-balance-sum-so-far / total-energy-balance ) )
      report ( 2 * gini-index-reserve / count people with [ perished? = false ] )
    ]
  ]
end

to measure-some-milestones
  if count resource-banks > 0 [ set duration-resource-bank-in-operation ( duration-resource-bank-in-operation + 1 ) ]
  if sufficiency-below-50%-reached? = false [
    if count people with [ energy-balance >= minimum-acceptable-energy-balance ] < 0.5 * population [
      set sufficiency-below-50%-reached? true
      set time-to-sufficiency-below-50% ticks
    ]
  ]
  if sufficiency-below-20%-reached? = false [
    if count people with [ energy-balance >= minimum-acceptable-energy-balance ] < 0.2 * population [
      set sufficiency-below-20%-reached? true
      set time-to-sufficiency-below-20% ticks
    ]
  ]
  if ticks = 500 [
    set people-active-at-0.5k-ticks count people with [ perished? = false ]
    set governing-group-active-at-0.5k-ticks count people with [ in-governing-group? = true and perished? = false ]
    set non-governing-group-active-at-0.5k-ticks count people with [ in-governing-group? = false and perished? = false ]
    set people-energy-balance-at-0.5k-ticks mean-energy-balance-of-population
    set governing-group-energy-balance-at-0.5k-ticks mean-energy-balance-of-governing-group
    set non-governing-group-energy-balance-at-0.5k-ticks mean-energy-balance-of-non-governing-group
    set people-sufficiency-at-0.5k-ticks %-overall-community-sufficiency
    set governing-group-sufficiency-at-0.5k-ticks %-in-governing-group-sufficiency
    set non-governing-group-sufficiency-at-0.5k-ticks %-not-in-governing-group-sufficiency
    set gini-index-at-0.5k-ticks gini-index-this-tick
    set energy-funds-for-resource-banks-at-0.5k-ticks total-energy-funds-collected
    set mean-resource-access-of-people-at-0.5k-ticks mean [ resource-access ] of people with [ perished? = false ]
    set mean-distance-from-center-of-active-people-at-0.5k-ticks mean-distance-from-center-of-active-people
    set mean-distance-from-center-of-active-governing-people-at-0.5k-ticks mean-distance-from-center-of-active-governing-people
    set mean-distance-from-center-of-active-non-governing-people-at-0.5k-ticks mean-distance-from-center-of-active-non-governing-people
    set energy-funds-distributed-by-resource-bank-at-0.5k-ticks total-energy-funds-distributed
    set duration-resource-bank-in-operation-at-0.5k-ticks duration-resource-bank-in-operation
    set impact-event-resource-bank-overlap-duration-at-0.5k-ticks impact-event-resource-bank-overlap-count
  ]
  if ticks = 1500 [
    set people-active-at-1.5k-ticks count people with [ perished? = false ]
    set governing-group-active-at-1.5k-ticks count people with [ in-governing-group? = true and perished? = false ]
    set non-governing-group-active-at-1.5k-ticks count people with [ in-governing-group? = false and perished? = false ]
    set people-energy-balance-at-1.5k-ticks mean-energy-balance-of-population
    set governing-group-energy-balance-at-1.5k-ticks mean-energy-balance-of-governing-group
    set non-governing-group-energy-balance-at-1.5k-ticks mean-energy-balance-of-non-governing-group
    set people-sufficiency-at-1.5k-ticks %-overall-community-sufficiency
    set governing-group-sufficiency-at-1.5k-ticks %-in-governing-group-sufficiency
    set non-governing-group-sufficiency-at-1.5k-ticks %-not-in-governing-group-sufficiency
    set gini-index-at-1.5k-ticks gini-index-this-tick
    set energy-funds-for-resource-banks-at-1.5k-ticks total-energy-funds-collected
    set mean-resource-access-of-people-at-1.5k-ticks mean [ resource-access ] of people with [ perished? = false ]
    set mean-distance-from-center-of-active-people-at-1.5k-ticks mean-distance-from-center-of-active-people
    set mean-distance-from-center-of-active-governing-people-at-1.5k-ticks mean-distance-from-center-of-active-governing-people
    set mean-distance-from-center-of-active-non-governing-people-at-1.5k-ticks mean-distance-from-center-of-active-non-governing-people
    set energy-funds-distributed-by-resource-bank-at-1.5k-ticks total-energy-funds-distributed
    set duration-resource-bank-in-operation-at-1.5k-ticks duration-resource-bank-in-operation
    set impact-event-resource-bank-overlap-duration-at-1.5k-ticks impact-event-resource-bank-overlap-count
  ]
  if ticks = 3000 [
    set people-active-at-3k-ticks count people with [ perished? = false ]
    set governing-group-active-at-3k-ticks count people with [ in-governing-group? = true and perished? = false ]
    set non-governing-group-active-at-3k-ticks count people with [ in-governing-group? = false and perished? = false ]
    set people-energy-balance-at-3k-ticks mean-energy-balance-of-population
    set governing-group-energy-balance-at-3k-ticks mean-energy-balance-of-governing-group
    set non-governing-group-energy-balance-at-3k-ticks mean-energy-balance-of-non-governing-group
    set people-sufficiency-at-3k-ticks %-overall-community-sufficiency
    set governing-group-sufficiency-at-3k-ticks %-in-governing-group-sufficiency
    set non-governing-group-sufficiency-at-3k-ticks %-not-in-governing-group-sufficiency
    set gini-index-at-3k-ticks gini-index-this-tick
    set energy-funds-for-resource-banks-at-3k-ticks total-energy-funds-collected
    set mean-resource-access-of-people-at-3k-ticks mean [ resource-access ] of people with [ perished? = false ]
    set mean-distance-from-center-of-active-people-at-3k-ticks mean-distance-from-center-of-active-people
    set mean-distance-from-center-of-active-governing-people-at-3k-ticks mean-distance-from-center-of-active-governing-people
    set mean-distance-from-center-of-active-non-governing-people-at-3k-ticks mean-distance-from-center-of-active-non-governing-people
    set energy-funds-distributed-by-resource-bank-at-3k-ticks total-energy-funds-distributed
    set duration-resource-bank-in-operation-at-3k-ticks duration-resource-bank-in-operation
    set impact-event-resource-bank-overlap-duration-at-3k-ticks impact-event-resource-bank-overlap-count
  ]
  if ticks = 5000 [
    set people-active-at-5k-ticks count people with [ perished? = false ]
    set governing-group-active-at-5k-ticks count people with [ in-governing-group? = true and perished? = false ]
    set non-governing-group-active-at-5k-ticks count people with [ in-governing-group? = false and perished? = false ]
    set people-energy-balance-at-5k-ticks mean-energy-balance-of-population
    set governing-group-energy-balance-at-5k-ticks mean-energy-balance-of-governing-group
    set non-governing-group-energy-balance-at-5k-ticks mean-energy-balance-of-non-governing-group
    set people-sufficiency-at-5k-ticks %-overall-community-sufficiency
    set governing-group-sufficiency-at-5k-ticks %-in-governing-group-sufficiency
    set non-governing-group-sufficiency-at-5k-ticks %-not-in-governing-group-sufficiency
    set gini-index-at-5k-ticks gini-index-this-tick
    set energy-funds-for-resource-banks-at-5k-ticks total-energy-funds-collected
    set mean-resource-access-of-people-at-5k-ticks mean [ resource-access ] of people with [ perished? = false ]
    set mean-distance-from-center-of-active-people-at-5k-ticks mean-distance-from-center-of-active-people
    set mean-distance-from-center-of-active-governing-people-at-5k-ticks mean-distance-from-center-of-active-governing-people
    set mean-distance-from-center-of-active-non-governing-people-at-5k-ticks mean-distance-from-center-of-active-non-governing-people
    set energy-funds-distributed-by-resource-bank-at-5k-ticks total-energy-funds-distributed
    set duration-resource-bank-in-operation-at-5k-ticks duration-resource-bank-in-operation
    set impact-event-resource-bank-overlap-duration-at-5k-ticks impact-event-resource-bank-overlap-count
  ]
  if ticks = 7500 [
    set people-active-at-7.5k-ticks count people with [ perished? = false ]
    set governing-group-active-at-7.5k-ticks count people with [ in-governing-group? = true and perished? = false ]
    set non-governing-group-active-at-7.5k-ticks count people with [ in-governing-group? = false and perished? = false ]
    set people-energy-balance-at-7.5k-ticks mean-energy-balance-of-population
    set governing-group-energy-balance-at-7.5k-ticks mean-energy-balance-of-governing-group
    set non-governing-group-energy-balance-at-7.5k-ticks mean-energy-balance-of-non-governing-group
    set people-sufficiency-at-7.5k-ticks %-overall-community-sufficiency
    set governing-group-sufficiency-at-7.5k-ticks %-in-governing-group-sufficiency
    set non-governing-group-sufficiency-at-7.5k-ticks %-not-in-governing-group-sufficiency
    set gini-index-at-7.5k-ticks gini-index-this-tick
    set energy-funds-for-resource-banks-at-7.5k-ticks total-energy-funds-collected
    set mean-resource-access-of-people-at-7.5k-ticks mean [ resource-access ] of people with [ perished? = false ]
    set mean-distance-from-center-of-active-people-at-7.5k-ticks mean-distance-from-center-of-active-people
    set mean-distance-from-center-of-active-governing-people-at-7.5k-ticks mean-distance-from-center-of-active-governing-people
    set mean-distance-from-center-of-active-non-governing-people-at-7.5k-ticks mean-distance-from-center-of-active-non-governing-people
    set energy-funds-distributed-by-resource-bank-at-7.5k-ticks total-energy-funds-distributed
    set duration-resource-bank-in-operation-at-7.5k-ticks duration-resource-bank-in-operation
    set impact-event-resource-bank-overlap-duration-at-7.5k-ticks impact-event-resource-bank-overlap-count
  ]
  if ticks = 10000 [
    set people-active-at-10k-ticks count people with [ perished? = false ]
    set governing-group-active-at-10k-ticks count people with [ in-governing-group? = true and perished? = false ]
    set non-governing-group-active-at-10k-ticks count people with [ in-governing-group? = false and perished? = false ]
    set people-energy-balance-at-10k-ticks mean-energy-balance-of-population
    set governing-group-energy-balance-at-10k-ticks mean-energy-balance-of-governing-group
    set non-governing-group-energy-balance-at-10k-ticks mean-energy-balance-of-non-governing-group
    set people-sufficiency-at-10k-ticks %-overall-community-sufficiency
    set governing-group-sufficiency-at-10k-ticks %-in-governing-group-sufficiency
    set non-governing-group-sufficiency-at-10k-ticks %-not-in-governing-group-sufficiency
    set gini-index-at-10k-ticks gini-index-this-tick
    set energy-funds-for-resource-banks-at-10k-ticks total-energy-funds-collected
    set mean-resource-access-of-people-at-10k-ticks mean [ resource-access ] of people with [ perished? = false ]
    set mean-distance-from-center-of-active-people-at-10k-ticks mean-distance-from-center-of-active-people
    set mean-distance-from-center-of-active-governing-people-at-10k-ticks mean-distance-from-center-of-active-governing-people
    set mean-distance-from-center-of-active-non-governing-people-at-10k-ticks mean-distance-from-center-of-active-non-governing-people
    set energy-funds-distributed-by-resource-bank-at-10k-ticks total-energy-funds-distributed
    set duration-resource-bank-in-operation-at-10k-ticks duration-resource-bank-in-operation
    set impact-event-resource-bank-overlap-duration-at-10k-ticks impact-event-resource-bank-overlap-count
  ]
end

to-report mean-energy-balance-of-population
  ifelse count people with [ perished? = false ] > 0 [ report mean [ energy-balance ] of people with [ perished? = false ]  ] [ report 0 ]

end

to-report mean-energy-balance-of-governing-group
  ifelse count people with [ in-governing-group? = true and perished? = false ] > 0 [
    report mean [ energy-balance ] of people with [ in-governing-group? = true and perished? = false ]
  ]
  [ report 0 ]
end

to-report mean-energy-balance-of-non-governing-group
  ifelse count people with [ in-governing-group? = false and perished? = false ] > 0 [
    report mean [ energy-balance ] of people with [ in-governing-group? = false and perished? = false ]
  ]
  [ report 0 ]
end

to-report %-in-governing-group-perished
  report 100 * ( count people with [ in-governing-group? = true and perished? = true ] / count people )
end

to-report %-not-in-governing-group-perished
  report 100 * ( count people with [ in-governing-group? = false and perished? = true ] / count people )
end

to-report %-in-governing-group-sufficiency
  ifelse count people with [ in-governing-group? = true and perished? = false ] > 0 [
    report 100 * ( count people with [ in-governing-group? = true and energy-balance >= minimum-acceptable-energy-balance ] / count people with [ in-governing-group? = true and perished? = false ] )
  ]
  [ report 0 ]
end

to-report %-not-in-governing-group-sufficiency
  ifelse count people with [ in-governing-group? = false and perished? = false ] > 0 [
    report 100 * ( count people with [ in-governing-group? = false and energy-balance >= minimum-acceptable-energy-balance ] / count people with [ in-governing-group? = false and perished? = false ] )
  ]
  [ report 0 ]
end

to-report %-overall-community-sufficiency
  ifelse count people with [ perished? = false ] > 0 [
    report 100 * ( count people with [ energy-balance >= minimum-acceptable-energy-balance ] / count people with [ perished? = false ] )
  ]
  [ report 0 ]
end

to-report %-desired-energy-balance-achieved
  ifelse count people with [ perished? = false ] > 0 [
    report 100 * ( count people with [ energy-balance >= desired-energy-balance ] / count people with [ perished? = false ] )
  ]
  [ report 0 ]
end

to-report energy-funds-donated-total
  ifelse count resource-banks > 0 [ report sum [ energy-funds-received-this-tick ] of resource-banks ]
  [ report 0 ]
end

to-report mean-distance-from-center-of-active-people
  ifelse count people with [ perished? = false ] != 0 [
    report mean [ distance-from-center ] of people with [ perished? = false ]
  ]
  [ report 0 ]
end

to-report mean-distance-from-center-of-active-governing-people
  ifelse count people with [ perished? = false and in-governing-group? = true ] != 0 [
    report mean [ distance-from-center ] of people with [ perished? = false and in-governing-group? = true ]
  ]
  [ report 0 ]
end

to-report mean-distance-from-center-of-active-non-governing-people
  ifelse count people with [ perished? = false and in-governing-group? = false ] != 0 [
    report mean [ distance-from-center ] of people with [ perished? = false and in-governing-group? = false ]
  ]
  [ report 0 ]
end

;to-report mean-energy-balance-of-population
;  ifelse count people > 0 [ report mean [ energy-balance ] of people ] [ report 0 ]
;
;end
;
;to-report mean-energy-balance-of-governing-group
;  ifelse count people with [ in-governing-group? = true ] > 0 [
;    report mean [ energy-balance ] of people with [ in-governing-group? = true ]
;  ]
;  [ report 0 ]
;end
;
;to-report mean-energy-balance-of-non-governing-group
;  ifelse count people with [ in-governing-group? = false ] > 0 [
;    report mean [ energy-balance ] of people with [ in-governing-group? = false ]
;  ]
;  [ report 0 ]
;end
;
;to-report %-in-governing-group-perished
;  report 100 * ( count people with [ in-governing-group? = true and perished? = true ] / count people )
;end
;
;to-report %-not-in-governing-group-perished
;  report 100 * ( count people with [ in-governing-group? = false and perished? = true ] / count people )
;end
;
;to-report %-in-governing-group-sufficiency
;  ifelse count people with [ in-governing-group? = true ] > 0 [
;    report 100 * ( count people with [ in-governing-group? = true and energy-balance >= minimum-acceptable-energy-balance ] / count people with [ in-governing-group? = true ] )
;  ]
;  [ report 0 ]
;end
;
;to-report %-not-in-governing-group-sufficiency
;  ifelse count people with [ in-governing-group? = false ] > 0 [
;    report 100 * ( count people with [ in-governing-group? = false and energy-balance >= minimum-acceptable-energy-balance ] / count people with [ in-governing-group? = false ] )
;  ]
;  [ report 0 ]
;end
;
;to-report %-overall-community-sufficiency
;  report 100 * ( count people with [ energy-balance >= minimum-acceptable-energy-balance ] / count people )
;end
;
;to-report %-desired-energy-balance-achieved
;  report 100 * ( count people with [ energy-balance >= desired-energy-balance ] / count people )
;end
;
;to-report energy-funds-donated-total
;  ifelse count resource-banks > 0 [ report sum [ energy-funds-received-this-tick ] of resource-banks ]
;  [ report 0 ]
;end
@#$#@#$#@
GRAPHICS-WINDOW
348
10
734
397
-1
-1
11.455
1
10
1
1
1
0
1
1
1
-16
16
-16
16
0
0
1
ticks
30.0

BUTTON
59
10
131
43
NIL
setup
NIL
1
T
OBSERVER
NIL
Q
NIL
NIL
1

BUTTON
139
10
211
43
NIL
go
T
1
T
OBSERVER
NIL
A
NIL
NIL
1

BUTTON
219
10
291
43
tick
go
NIL
1
T
OBSERVER
NIL
S
NIL
NIL
1

SLIDER
6
93
171
126
population
population
1
400
400.0
1
1
NIL
HORIZONTAL

SLIDER
6
51
171
84
resource-area-size
resource-area-size
1
16
3.0
1
1
NIL
HORIZONTAL

CHOOSER
6
178
171
223
decision-based-on-experience-of
decision-based-on-experience-of
"governing group" "non-governing group" "everyone"
0

SLIDER
6
232
171
265
decision-threshold
decision-threshold
0
100
9.0
1
1
%
HORIZONTAL

PLOT
740
10
978
130
community overview
ticks
number
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"people - active" 1.0 0 -16777216 true "" "if graphs-on? = true [ plot count people with [ perished? = false ] ]"
"res-banks" 1.0 0 -6459832 true "" "if graphs-on? = true [ plot count resource-banks ]"
"res-units" 1.0 0 -15040220 true "" "if graphs-on? = true [ plot count resource-units with [ harvested? = false ] ]"
"governing" 1.0 0 -2674135 true "" "if graphs-on? = true [ \nplot count people with [ perished? = false and in-governing-group? = true ]\n]"
"non-governing" 1.0 0 -13345367 true "" "if graphs-on? = true [ \nplot count people with [ perished? = false and in-governing-group? = false ]\n]"

PLOT
984
10
1222
130
mean energy balance
ticks
energy units
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"overall" 1.0 0 -13840069 true "" "if graphs-on? = true and count people with [ perished? = false ] > 0 [\nplot mean-energy-balance-of-population\n]"
"governing" 1.0 0 -2674135 true "" "if graphs-on? = true and count people with [ perished? = false and in-governing-group? = true ] > 0 \n[\n plot mean-energy-balance-of-governing-group \n]"
"non-governing" 1.0 0 -13345367 true "" "if graphs-on? = true and count people with [ perished? = false and in-governing-group? = false ] > 0 \n[\nplot mean-energy-balance-of-non-governing-group\n]"
"min-acceptbl" 1.0 0 -16777216 true "" "if graphs-on? = true [\nplot minimum-acceptable-energy-balance\n]"

PLOT
741
263
979
383
Gini index vs time
ticks
gini index
0.0
10.0
0.0
1.0
true
false
"" ""
PENS
"Gini" 1.0 0 -16777216 true "" "if graphs-on? = true and count people > 0 [ \nplot gini-index-each-tick\n]"

PLOT
985
262
1223
382
Lorenz curve - energy balance
% people
% energy
0.0
100.0
0.0
100.0
false
false
"" ""
PENS
"equal" 100.0 0 -16777216 true "if graphs-on? = true [ \n; draw the straight line y = x from origin to upper right\nset-current-plot-pen \"equal\"\nplot 0\nplot 100\n]" ""
"Lorenz" 1.0 0 -955883 true "" "if graphs-on? = true and count people with [ perished? = false ] > 0 [\nplot-pen-reset\nset-plot-pen-interval 100 / count people with [ perished? = false ]\nplot 0\nforeach lorenz-points plot\n]"

PLOT
740
136
978
256
energy balance outcomes
ticks
energy units
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"people - total" 1.0 0 -955883 true "" "if graphs-on? = true [ \nplot sum [ energy-balance ] of people\n]"
"don-res-banks" 1.0 0 -6459832 true "" "if graphs-on? = true [ \nplot sum [ energy-funds-received-this-tick ] of resource-banks\n]"
"distr-res-banks" 1.0 0 -16777216 true "" "if graphs-on? = true [ \nplot sum [ energy-funds-distributed-this-tick ] of resource-banks\n]"

SLIDER
6
135
171
168
social-inequity-index
social-inequity-index
0
1
0.14
0.01
1
NIL
HORIZONTAL

SWITCH
177
51
342
84
operate-resource-banks?
operate-resource-banks?
0
1
-1000

PLOT
984
136
1222
256
sufficiency outcomes by group
ticks
% people
0.0
10.0
0.0
100.0
true
true
"" ""
PENS
"governing" 1.0 0 -2674135 true "" "if graphs-on? = true [ \nplot %-in-governing-group-sufficiency\n]"
"non-governing" 1.0 0 -13345367 true "" "if graphs-on? = true [ \nplot %-not-in-governing-group-sufficiency\n]"
"overall" 1.0 0 -13840069 true "" "if graphs-on? = true [ \nplot %-overall-community-sufficiency\n]"
"desired - overall" 1.0 0 -1184463 true "" "if graphs-on? = true [  \nplot %-desired-energy-balance-achieved\n]"

SLIDER
177
242
342
275
decision-period
decision-period
1
2 * ( impact-periodicity + impact-duration )
50.0
1
1
NIL
HORIZONTAL

PLOT
177
284
342
404
resource-access distribution
resource-access
# people
0.0
1.0
0.0
10.0
true
false
"" ""
PENS
"default" 0.05 1 -16777216 true "" "if graphs-on? [\nhistogram [ resource-access ] of people with [ perished? = false ]\n]"

SLIDER
177
200
342
233
resource-bank-operation-cost
resource-bank-operation-cost
0
1
0.11
0.01
1
NIL
HORIZONTAL

SLIDER
6
274
171
307
resource-impact-sensitivity
resource-impact-sensitivity
0
1
0.97
0.01
1
NIL
HORIZONTAL

PLOT
741
391
979
511
population change
ticks
number
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"inactive" 1.0 0 -14730904 true "" "if graphs-on? = true [ \nplot number-perished-this-tick\n]"

PLOT
985
391
1223
511
time outside home
ticks
ticks
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"aggr." 1.0 0 -4699768 true "" "if graphs-on? = true [ \nplot sum [ ticks-outside-home ] of people with [ perished? = false ]\n]"

MONITOR
360
412
468
457
active population
count people with [ perished? = false ]
0
1
11

SWITCH
486
419
589
452
profile?
profile?
1
1
-1000

SWITCH
599
419
717
452
graphs-on?
graphs-on?
0
1
-1000

CHOOSER
6
316
171
361
resource-distribution
resource-distribution
"centralized" "scattered"
0

PLOT
1228
10
1466
130
activity costs
ticks
energy units
0.0
10.0
0.0
1.0
true
true
"" ""
PENS
"metabolic" 1.0 0 -15302303 true "" "if graphs-on? and count people with [ perished? = false ] > 0 [\nplot mean [ metabolic-cost ] of people with [ perished? = false ]\n]"
"travel" 1.0 0 -7500403 true "" "if graphs-on? and count people with [ perished? = false ] > 0 [\nplot mean [ travel-cost ] of people with [ perished? = false ]\n]"
"exertion" 1.0 0 -2674135 true "" "if graphs-on? and count people with [ perished? = false ] > 0 [\nplot mean [ exertion-cost ] of people with [ perished? = false ]\n]"

CHOOSER
177
93
342
138
tax-policy
tax-policy
"flat rate" "progressive"
1

CHOOSER
177
146
342
191
aggregation-technology
aggregation-technology
"summation" "threshold"
1

SWITCH
6
370
171
403
instant-resource-bank-access
instant-resource-bank-access
1
1
-1000

SLIDER
6
412
171
445
starting-metabolic-cost
starting-metabolic-cost
0
1
0.2
0.01
1
NIL
HORIZONTAL

TEXTBOX
181
415
345
471
Note: The update-gini-and-lorenz procedure has been commented out in the code.
11
0.0
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="experiment-1" repetitions="250000" sequentialRunOrder="false" runMetricsEveryStep="false">
    <setup>setup</setup>
    <go>go</go>
    <timeLimit steps="10000"/>
    <metric>resource-area-size</metric>
    <metric>population</metric>
    <metric>social-inequity-index</metric>
    <metric>decision-based-on-experience-of</metric>
    <metric>decision-period</metric>
    <metric>decision-threshold</metric>
    <metric>resource-impact-sensitivity</metric>
    <metric>operate-resource-banks?</metric>
    <metric>tax-policy</metric>
    <metric>aggregation-technology</metric>
    <metric>instant-resource-bank-access</metric>
    <metric>resource-distribution</metric>
    <metric>resource-bank-lifetime</metric>
    <metric>impact-periodicity</metric>
    <metric>impact-severity</metric>
    <metric>impact-duration</metric>
    <metric>starting-resource-production-capacity</metric>
    <metric>starting-metabolic-cost</metric>
    <metric>starting-travel-cost</metric>
    <metric>starting-exertion-cost</metric>
    <metric>minimum-acceptable-energy-balance</metric>
    <metric>resource-bank-operation-cost</metric>
    <metric>resource-bank-operation-cost-per-decision-period</metric>
    <metric>governing-group-size</metric>
    <metric>non-governing-group-size</metric>
    <metric>time-to-sufficiency-below-50%</metric>
    <metric>time-to-sufficiency-below-20%</metric>
    <metric>people-active-at-0.5k-ticks</metric>
    <metric>people-active-at-1.5k-ticks</metric>
    <metric>people-active-at-3k-ticks</metric>
    <metric>people-active-at-5k-ticks</metric>
    <metric>people-active-at-7.5k-ticks</metric>
    <metric>people-active-at-10k-ticks</metric>
    <metric>governing-group-active-at-0.5k-ticks</metric>
    <metric>governing-group-active-at-1.5k-ticks</metric>
    <metric>governing-group-active-at-3k-ticks</metric>
    <metric>governing-group-active-at-5k-ticks</metric>
    <metric>governing-group-active-at-7.5k-ticks</metric>
    <metric>governing-group-active-at-10k-ticks</metric>
    <metric>non-governing-group-active-at-0.5k-ticks</metric>
    <metric>non-governing-group-active-at-1.5k-ticks</metric>
    <metric>non-governing-group-active-at-3k-ticks</metric>
    <metric>non-governing-group-active-at-5k-ticks</metric>
    <metric>non-governing-group-active-at-7.5k-ticks</metric>
    <metric>non-governing-group-active-at-10k-ticks</metric>
    <metric>people-energy-balance-at-0.5k-ticks</metric>
    <metric>people-energy-balance-at-1.5k-ticks</metric>
    <metric>people-energy-balance-at-3k-ticks</metric>
    <metric>people-energy-balance-at-5k-ticks</metric>
    <metric>people-energy-balance-at-7.5k-ticks</metric>
    <metric>people-energy-balance-at-10k-ticks</metric>
    <metric>governing-group-energy-balance-at-0.5k-ticks</metric>
    <metric>governing-group-energy-balance-at-1.5k-ticks</metric>
    <metric>governing-group-energy-balance-at-3k-ticks</metric>
    <metric>governing-group-energy-balance-at-5k-ticks</metric>
    <metric>governing-group-energy-balance-at-7.5k-ticks</metric>
    <metric>governing-group-energy-balance-at-10k-ticks</metric>
    <metric>non-governing-group-energy-balance-at-0.5k-ticks</metric>
    <metric>non-governing-group-energy-balance-at-1.5k-ticks</metric>
    <metric>non-governing-group-energy-balance-at-3k-ticks</metric>
    <metric>non-governing-group-energy-balance-at-5k-ticks</metric>
    <metric>non-governing-group-energy-balance-at-7.5k-ticks</metric>
    <metric>non-governing-group-energy-balance-at-10k-ticks</metric>
    <metric>people-sufficiency-at-0.5k-ticks</metric>
    <metric>people-sufficiency-at-1.5k-ticks</metric>
    <metric>people-sufficiency-at-3k-ticks</metric>
    <metric>people-sufficiency-at-5k-ticks</metric>
    <metric>people-sufficiency-at-7.5k-ticks</metric>
    <metric>people-sufficiency-at-10k-ticks</metric>
    <metric>governing-group-sufficiency-at-0.5k-ticks</metric>
    <metric>governing-group-sufficiency-at-1.5k-ticks</metric>
    <metric>governing-group-sufficiency-at-3k-ticks</metric>
    <metric>governing-group-sufficiency-at-5k-ticks</metric>
    <metric>governing-group-sufficiency-at-7.5k-ticks</metric>
    <metric>governing-group-sufficiency-at-10k-ticks</metric>
    <metric>non-governing-group-sufficiency-at-0.5k-ticks</metric>
    <metric>non-governing-group-sufficiency-at-1.5k-ticks</metric>
    <metric>non-governing-group-sufficiency-at-3k-ticks</metric>
    <metric>non-governing-group-sufficiency-at-5k-ticks</metric>
    <metric>non-governing-group-sufficiency-at-7.5k-ticks</metric>
    <metric>non-governing-group-sufficiency-at-10k-ticks</metric>
    <metric>gini-index-at-0.5k-ticks</metric>
    <metric>gini-index-at-1.5k-ticks</metric>
    <metric>gini-index-at-3k-ticks</metric>
    <metric>gini-index-at-5k-ticks</metric>
    <metric>gini-index-at-7.5k-ticks</metric>
    <metric>gini-index-at-10k-ticks</metric>
    <metric>energy-funds-for-resource-banks-at-0.5k-ticks</metric>
    <metric>energy-funds-for-resource-banks-at-1.5k-ticks</metric>
    <metric>energy-funds-for-resource-banks-at-3k-ticks</metric>
    <metric>energy-funds-for-resource-banks-at-5k-ticks</metric>
    <metric>energy-funds-for-resource-banks-at-7.5k-ticks</metric>
    <metric>energy-funds-for-resource-banks-at-10k-ticks</metric>
    <metric>mean-distance-from-center-of-active-people-at-0.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-people-at-1.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-people-at-3k-ticks</metric>
    <metric>mean-distance-from-center-of-active-people-at-5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-people-at-7.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-people-at-10k-ticks</metric>
    <metric>mean-distance-from-center-of-active-governing-people-at-0.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-governing-people-at-1.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-governing-people-at-3k-ticks</metric>
    <metric>mean-distance-from-center-of-active-governing-people-at-5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-governing-people-at-7.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-governing-people-at-10k-ticks</metric>
    <metric>mean-distance-from-center-of-active-non-governing-people-at-0.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-non-governing-people-at-1.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-non-governing-people-at-3k-ticks</metric>
    <metric>mean-distance-from-center-of-active-non-governing-people-at-5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-non-governing-people-at-7.5k-ticks</metric>
    <metric>mean-distance-from-center-of-active-non-governing-people-at-10k-ticks</metric>
    <metric>energy-funds-distributed-by-resource-bank-at-0.5k-ticks</metric>
    <metric>energy-funds-distributed-by-resource-bank-at-1.5k-ticks</metric>
    <metric>energy-funds-distributed-by-resource-bank-at-3k-ticks</metric>
    <metric>energy-funds-distributed-by-resource-bank-at-5k-ticks</metric>
    <metric>energy-funds-distributed-by-resource-bank-at-7.5k-ticks</metric>
    <metric>energy-funds-distributed-by-resource-bank-at-10k-ticks</metric>
    <metric>duration-resource-bank-in-operation-at-0.5k-ticks</metric>
    <metric>duration-resource-bank-in-operation-at-1.5k-ticks</metric>
    <metric>duration-resource-bank-in-operation-at-3k-ticks</metric>
    <metric>duration-resource-bank-in-operation-at-5k-ticks</metric>
    <metric>duration-resource-bank-in-operation-at-7.5k-ticks</metric>
    <metric>duration-resource-bank-in-operation-at-10k-ticks</metric>
    <metric>mean-resource-access-of-people-at-0.5k-ticks</metric>
    <metric>mean-resource-access-of-people-at-1.5k-ticks</metric>
    <metric>mean-resource-access-of-people-at-3k-ticks</metric>
    <metric>mean-resource-access-of-people-at-5k-ticks</metric>
    <metric>mean-resource-access-of-people-at-7.5k-ticks</metric>
    <metric>mean-resource-access-of-people-at-10k-ticks</metric>
    <metric>impact-event-resource-bank-overlap-duration-at-0.5k-ticks</metric>
    <metric>impact-event-resource-bank-overlap-duration-at-1.5k-ticks</metric>
    <metric>impact-event-resource-bank-overlap-duration-at-3k-ticks</metric>
    <metric>impact-event-resource-bank-overlap-duration-at-5k-ticks</metric>
    <metric>impact-event-resource-bank-overlap-duration-at-7.5k-ticks</metric>
    <metric>impact-event-resource-bank-overlap-duration-at-10k-ticks</metric>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@

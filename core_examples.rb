load './core.rb'
def title(msg)
  puts "------#{msg}-----"
end

title "Tuples"
tuple = Cons[1][2]
puts Car[tuple]
puts Cdr[tuple]

title "Logic"

title "If True"
If[PrintTrue][PrintFalse][True]
title "If False"
If[PrintTrue][PrintFalse][False]

title "Assert/Refute"
Assert[True]
Refute[False]

title "And/Or/Not"
Assert[And[True][True]]
Refute[And[False][False]]
Refute[And[True][False]]
Refute[And[False][True]]

Assert[Or[True][True]]
Refute[Or[False][False]]
Assert[Or[True][False]]
Assert[Or[False][True]]

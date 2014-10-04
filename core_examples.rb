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

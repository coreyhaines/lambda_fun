load './tuple.rb'
load './booleans.rb'
load './assertions.rb'
load './numbers.rb'
def title(msg)
  puts "------#{msg}-----"
end
Noop = -> _ { }

title "Tuples"
tuple = Cons[1][2]
puts Car[tuple]
puts Cdr[tuple]


title "If"

puts "If True"
If[PrintTrue][PrintFalse][True]
puts "If False"
If[PrintTrue][PrintFalse][False]

title "Assert/Refute"
Assert[True]
Assert[False]
Refute[True]
Refute[False]

title "Numbers"

title "Checking if things are zero"
Assert[IsZero[$zero]]
Refute[IsZero[Succ[$zero]]]
Assert[IsZero[Pred[Succ[$zero]]]]
Refute[IsZero[$one]]
Refute[IsZero[$two]]
Assert[IsZero[Pred[$one]]]
Refute[IsZero[Pred[$two]]]
Assert[IsZero[Pred[Pred[$two]]]]

title "Checking if two numbers are equal"
Assert[NumbersEqual[$zero][$zero]]
Refute[NumbersEqual[$zero][$one]]
Refute[NumbersEqual[$one][$zero]]
Assert[NumbersEqual[$one][$one]]
Assert[NumbersEqual[$two][$two]]
Refute[NumbersEqual[$two][$three]]
Refute[NumbersEqual[$three][$two]]






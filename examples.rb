load './core.rb'
load './numbers.rb'
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

title "Addition"
Assert[IsZero[NumbersAdd[$zero][$zero]]]
Assert[NumbersEqual[$one][NumbersAdd[$one][$zero]]]
Assert[NumbersEqual[$two][NumbersAdd[$two][$zero]]]
Assert[NumbersEqual[$one][NumbersAdd[$zero][$one]]]
Assert[NumbersEqual[$two][NumbersAdd[$zero][$two]]]
Assert[NumbersEqual[$two][NumbersAdd[$one][$one]]]
Assert[NumbersEqual[$three][NumbersAdd[$two][$one]]]
Assert[NumbersEqual[$three][NumbersAdd[$one][$two]]]

title "Subtraction"
Assert[IsZero[NumbersSubtract[$zero][$zero]]]
Assert[IsZero[NumbersSubtract[$one][$one]]]
Assert[NumbersEqual[$one][NumbersSubtract[$one][$zero]]]
Assert[NumbersEqual[$two][NumbersSubtract[$three][$one]]]
Assert[NumbersEqual[$one][NumbersSubtract[$three][$two]]]
Assert[NumbersEqual[$zero][NumbersSubtract[$two][$three]]]
Assert[NumbersEqual[$zero][NumbersSubtract[$one][$four]]]



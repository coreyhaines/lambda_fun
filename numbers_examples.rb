require_relative 'core.rb'
require_relative 'testing.rb'
require_relative 'numbers.rb'
Title["Numbers"]

Title["Checking if things are zero (8)"]
Assert[IsZero[$zero]]
Refute[IsZero[Succ[$zero]]]
Assert[IsZero[Pred[Succ[$zero]]]]
Refute[IsZero[$one]]
Refute[IsZero[$two]]
Assert[IsZero[Pred[$one]]]
Refute[IsZero[Pred[$two]]]
Assert[IsZero[Pred[Pred[$two]]]]

Title["Checking if two numbers are equal (7)"]
Assert[NumbersEqual[$zero][$zero]]
Refute[NumbersEqual[$zero][$one]]
Refute[NumbersEqual[$one][$zero]]
Assert[NumbersEqual[$one][$one]]
Assert[NumbersEqual[$two][$two]]
Refute[NumbersEqual[$two][$three]]
Refute[NumbersEqual[$three][$two]]

Title["Addition (8)"]
AssertZero[NumbersAdd[$zero][$zero]]
AssertNumbersEqual[$one][NumbersAdd[$one][$zero]]
AssertNumbersEqual[$two][NumbersAdd[$two][$zero]]
AssertNumbersEqual[$one][NumbersAdd[$zero][$one]]
AssertNumbersEqual[$two][NumbersAdd[$zero][$two]]
AssertNumbersEqual[$two][NumbersAdd[$one][$one]]
AssertNumbersEqual[$three][NumbersAdd[$two][$one]]
AssertNumbersEqual[$three][NumbersAdd[$one][$two]]

Title["Subtraction (7)"]
AssertZero[NumbersSubtract[$zero][$zero]]
AssertZero[NumbersSubtract[$one][$one]]
AssertNumbersEqual[$one][NumbersSubtract[$one][$zero]]
AssertNumbersEqual[$two][NumbersSubtract[$three][$one]]
AssertNumbersEqual[$one][NumbersSubtract[$three][$two]]
AssertNumbersEqual[$zero][NumbersSubtract[$two][$three]]
AssertNumbersEqual[$zero][NumbersSubtract[$one][$four]]


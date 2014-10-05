require_relative 'testing.rb'
require_relative 'numbers.rb'
title "Assert/Refute (2)"
Assert[True]
Refute[False]

title "AssertEqual"

AssertNumbersEqual = AssertEqual[NumbersEqual]
AssertNumbersEqual[$one][$one]
AssertNumbersEqual[$two][$two]

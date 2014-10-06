require_relative 'core.rb'
require_relative 'testing.rb'
require_relative 'list.rb'
require_relative 'numbers.rb'

Title["Lists"]

Title["Empty List (2)"]
Assert[IsEmpty[EmptyList]]
Refute[IsEmpty[Unshift[EmptyList][$one]]]

Title["Head (3)"]
AssertNumbersEqual[$one][Head[Unshift[EmptyList][$one]]]
RefuteNumbersEqual[$two][Head[Unshift[EmptyList][$one]]]
AssertNumbersEqual[$two][Head[Unshift[Unshift[EmptyList][$one]][$two]]]

Title["Tail (1)"]
AssertEmpty[Tail[Unshift[EmptyList][$one]]]

Title["Tail of EmptyList should be EmptyList (1)"]
AssertEmpty[Tail[EmptyList]]

Title["Making a new list (3)"]
RefuteEmpty[NewList[$one]]
AssertNumbersEqual[$one][Head[NewList[$one]]]
AssertEmpty[Tail[NewList[$one]]]

Title["InList"]
Title["InList_Number (5)"]
InList_Number = InList[NumbersEqual]
Refute[InList_Number[EmptyList][$one]]
Assert[InList_Number[NewList[$one]][$one]]
Refute[InList_Number[NewList[$one]][$two]]
Assert[InList_Number[Unshift[NewList[$two]][$one]][$two]]
Assert[InList_Number[Unshift[Unshift[NewList[$two]][$one]][$three]][$two]]

Title["InList_Boolean (5)"]
InList_Boolean = InList[XNor]
Refute[InList_Boolean[EmptyList][True]]
Refute[InList_Boolean[EmptyList][False]]
Assert[InList_Boolean[NewList[True]][True]]
Assert[InList_Boolean[NewList[False]][False]]
Assert[InList_Boolean[Unshift[NewList[True]][False]][True]]
Assert[InList_Boolean[Unshift[NewList[True]][False]][False]]

Title["Filter"]

Title["Finding Trues (3)"]
TrueFilter = Filter[->element{element}]
FalseFilter = Filter[->element{Not[element]}]
AssertEmpty[TrueFilter[EmptyList]]
RefuteEmpty[TrueFilter[NewList[True]]]
AssertEmpty[FalseFilter[NewList[True]]]

Title["Filter should return all matching elements (3)"]
Assert[Head[TrueFilter[Unshift[Unshift[NewList[True]][True]][False]]]]
Assert[Head[Tail[TrueFilter[Unshift[Unshift[NewList[True]][True]][False]]]]]
AssertEmpty[Tail[Tail[TrueFilter[Unshift[Unshift[NewList[True]][True]][False]]]]]

Title["Reduce"]

Title["Reducing numbers (3)"]
reduce_over_add = Reduce[NumbersAdd][$one]
AssertNumbersEqual[$one][reduce_over_add[EmptyList]]
AssertNumbersEqual[$two][reduce_over_add[NewList[$one]]]
AssertNumbersEqual[$three][reduce_over_add[NewList[$two]]]
AssertNumbersEqual[$three][reduce_over_add[Unshift[NewList[$one]][$one]]]







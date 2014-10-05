load './core.rb'
load './list.rb'
load './numbers.rb'
def title(msg)
  puts "------#{msg}-----"
end

title "Lists"

title "Empty List (2)"
Assert[IsEmpty[EmptyList]]
Refute[IsEmpty[Unshift[EmptyList][$one]]]

title "Head (3)"
Assert[NumbersEqual[$one][Head[Unshift[EmptyList][$one]]]]
Refute[NumbersEqual[$two][Head[Unshift[EmptyList][$one]]]]
Assert[NumbersEqual[$two][Head[Unshift[Unshift[EmptyList][$one]][$two]]]]

title "Tail (1)"
Assert[IsEmpty[Tail[Unshift[EmptyList][$one]]]]

title "Tail of EmptyList should be EmptyList (1)"
Assert[IsEmpty[Tail[EmptyList]]]

title "Making a new list (3)"
Assert[Not[IsEmpty[NewList[$one]]]]
Assert[NumbersEqual[$one][Head[NewList[$one]]]]
Assert[IsEmpty[Tail[NewList[$one]]]]

title "InList"
title "InList_Number (5)"
InList_Number = InList[NumbersEqual]
Refute[InList_Number[EmptyList][$one]]
Assert[InList_Number[NewList[$one]][$one]]
Refute[InList_Number[NewList[$one]][$two]]
Assert[InList_Number[Unshift[NewList[$two]][$one]][$two]]
Assert[InList_Number[Unshift[Unshift[NewList[$two]][$one]][$three]][$two]]

title "InList_Boolean (5)"
InList_Boolean = InList[XNor]
Refute[InList_Boolean[EmptyList][True]]
Refute[InList_Boolean[EmptyList][False]]
Assert[InList_Boolean[NewList[True]][True]]
Assert[InList_Boolean[NewList[False]][False]]
Assert[InList_Boolean[Unshift[NewList[True]][False]][True]]
Assert[InList_Boolean[Unshift[NewList[True]][False]][False]]

title "Filter"

title "Finding Trues (3)"
TrueFilter = Filter[->element{element}]
FalseFilter = Filter[->element{Not[element]}]
Assert[IsEmpty[TrueFilter[EmptyList]]]
Refute[IsEmpty[TrueFilter[NewList[True]]]]
Assert[IsEmpty[FalseFilter[NewList[True]]]]

title "Filter should return all matching elements (2)"
Assert[Not[IsEmpty[TrueFilter[Unshift[NewList[True]][True]]]]]
Assert[Not[IsEmpty[Tail[TrueFilter[Unshift[NewList[True]][True]]]]]]

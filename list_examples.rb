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

title "InList (5)"
InList_Number = InList[NumbersEqual]
Refute[InList_Number[EmptyList][$one]]
Assert[InList_Number[NewList[$one]][$one]]
Refute[InList_Number[NewList[$one]][$two]]
Assert[InList_Number[Unshift[NewList[$two]][$one]][$two]]
Assert[InList_Number[Unshift[Unshift[NewList[$two]][$one]][$three]][$two]]



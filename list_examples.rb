load './core.rb'
load './list.rb'
load './numbers.rb'
def title(msg)
  puts "------#{msg}-----"
end

title "Lists"

title "Empty List (2)"
Assert[IsEmpty[EmptyList]]
Refute[IsEmpty[Unshift[$one][EmptyList]]]

title "Head (3)"
Assert[NumbersEqual[$one][Head[Unshift[$one][EmptyList]]]]
Refute[NumbersEqual[$two][Head[Unshift[$one][EmptyList]]]]
Assert[NumbersEqual[$two][Head[Unshift[$two][Unshift[$one][EmptyList]]]]]

title "Tail (1)"
Assert[IsEmpty[Tail[Unshift[$one][EmptyList]]]]

title "Tail of EmptyList should be EmptyList (1)"
Assert[IsEmpty[Tail[EmptyList]]]

title "Making a new list (3)"
Assert[Not[IsEmpty[NewList[$one]]]]
Assert[NumbersEqual[$one][Head[NewList[$one]]]]
Assert[IsEmpty[Tail[NewList[$one]]]]

title "InList (3)"
Refute[InList[EmptyList][$one]]
Assert[InList[NewList[$one]][$one]]
Refute[InList[NewList[$one]][$two]]





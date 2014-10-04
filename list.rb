EmptyList = Cons[Cons[True][Noop]][Cons[Cons[True][Noop]][Noop]]
IsEmpty=->list{Car[Car[list]]}
Head=->list{Cdr[Car[list]]}
Tail=->list{Cdr[list]}
Unshift =
-> element { -> list {
  Cons[Cons[False][element]][list]
}}
NewList=->element{Unshift[element][EmptyList]}
InList =
-> list { -> element {
  If[
    LFalse
  ][
    ->_{
      If[
        LTrue
      ][
        LFalse
      ][
        NumbersEqual[element][Head[list]]
      ]
    }
  ][
    IsEmpty[list]
  ]
}}

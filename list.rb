require_relative 'core.rb'
EmptyList = Cons[True][Noop]
IsEmpty=Car
Head=->list{Car[Cdr[list]]}
Tail=->list{
  If[VW[EmptyList]][->_{Cdr[Cdr[list]]}][IsEmpty[list]]
}

Unshift=
->list{->element{
  Cons[False][Cons[element][list]]
}}

NewList=->element{Unshift[EmptyList][element]}

InList=->equality_operator{
->list{->element{
  If[
    LFalse
  ][
    ->_{
      If[
        LTrue
      ][
        ->_{InList[equality_operator][Tail[list]][element]}
      ][
        equality_operator[Head[list]][element]
      ]
    }
  ][
    IsEmpty[list]
  ]
}}}

Filter=->filter{
->list{
  If[
    VW[EmptyList]
  ][
    ->_{
      If[
        ->_{Unshift[Filter[filter][Tail[list]]][Head[list]]}
      ][
        ->_{Filter[filter][Tail[list]]}
      ][
        filter[Head[list]]
      ]
    }
  ][
    IsEmpty[list]
  ]
}}

Reduce=->reduction_function{->initial_value{
->list{
  If[
    VW[initial_value]
  ][
    ->_{
      Reduce[reduction_function][reduction_function[initial_value][Head[list]]][Tail[list]]
    }
  ][
    IsEmpty[list]
  ]
}}}

require_relative 'list.rb'
require_relative 'core.rb'

NewAssociativeList=
->key_equality_operator{
  Cons[key_equality_operator][EmptyList]
}

AssociativeListEqualityOperator=->list{Car[list]}
AssociativeListElements=->list{Cdr[list]}
AssociativeListElementKey=->element{Car[element]}
AssociativeListElementValue=->element{Cdr[element]}

AssociativeListAdd=
->list{->key{->value{
  Cons[Car[list]][Unshift[Cdr[list]][Cons[key][value]]]
}}}

list_find=->equality_operator{->list{->target{
  If[
    ->_{raise "implement this!"}
  ][

    ->_{
      If[
        VW[Head[list]]
      ][
        ->_{list_find[equality_operator][Tail[list]][target] }
      ][
        equality_operator[Head[list]][target]
      ]
    }

  ][
    IsEmpty[list]
  ]
}}}

AssociativeListGet=->list{->key{
  AssociativeListElementValue[
    list_find[
      ->element{->desired_key{
        AssociativeListEqualityOperator[list][AssociativeListElementKey[desired_key]][AssociativeListElementKey[element]]
      }}
    ][
      AssociativeListElements[list]
    ][Cons[key][Noop]]
  ]
}}

AssociativeListLength=->list{Length[Cdr[list]]}

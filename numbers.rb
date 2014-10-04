IsZero = Car
Succ = -> number { Cons[False][number] }
Pred = -> number { Cdr[number] }

$zero = Cons[True][Noop]
$one = Succ[$zero]
$two = Succ[$one]
$three = Succ[$two]
$four = Succ[$three]

VW = -> value_to_wrap {->_{ value_to_wrap }}
LTrue = VW[True]
LFalse = VW[False]

NumbersEqual =
-> first { -> second {
  If[
    -> _ { If[LTrue][LFalse][IsZero[second]] }
  ][
    -> _ {
      If[
        LFalse
      ][
        -> _ { NumbersEqual[Pred[first]][Pred[second]] }
      ][
        IsZero[second]
      ]
    }
  ][
    IsZero[first]
  ]
}}

ApplyUnlessZero =
-> if_this_is_zero { -> return_this { -> otherwise_do_this {
  If[
    VW[return_this]
  ][
    ->_{otherwise_do_this.(Noop)}
  ][
    IsZero[if_this_is_zero]
  ]
}}}

NumbersAdd =
-> addend { -> augend {
  ApplyUnlessZero[augend][addend][
    ->_{NumbersAdd[Succ[addend]][Pred[augend]]}
  ]
}}

NumbersSubtract =
-> minuend { -> subtrahend {
  ApplyUnlessZero[subtrahend][minuend][
    ->_{
      ApplyUnlessZero[minuend][$zero][
        ->_{NumbersSubtract[Pred[minuend]][Pred[subtrahend]]}
      ]
    }
  ]
}}

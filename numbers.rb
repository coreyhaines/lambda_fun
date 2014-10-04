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

IfZero =
-> if_this_is_zero { -> do_this { -> otherwise_do_this {
  If[->_{do_this.(Noop)}][->_{otherwise_do_this.(Noop)}][IsZero[if_this_is_zero]]
}}}


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

NumbersAdd =
-> addend { -> augend {
  IfZero[augend][VW[addend]][
    ->_{NumbersAdd[Succ[addend]][Pred[augend]]}
  ]
}}

NumbersSubtract =
-> minuend { -> subtrahend {
  IfZero[subtrahend][VW[minuend]][
    ->_{
      IfZero[minuend][VW[$zero]][
        ->_{NumbersSubtract[Pred[minuend]][Pred[subtrahend]]}
      ]
    }
  ]
}}

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

NumbersAdd =
-> addend { -> augend {
  If[
    VW[augend]
  ][
    -> _ {
      NumbersAdd[Pred[addend]][Succ[augend]]
    }
  ][
    IsZero[addend]
  ]
}}

NumbersSubtract =
-> minuend { -> subtrahend {
  If[
    VW[minuend]
  ][
    -> _ {
      If[
        VW[$zero]
      ][
        -> _ {
          NumbersSubtract[Pred[minuend]][Pred[subtrahend]]
        }
      ][
        IsZero[minuend]
      ]
    }
  ][
    IsZero[subtrahend]
  ]
}}

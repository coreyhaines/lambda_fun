IsZero = Car
Succ = -> number { Cons[False][number] }
Pred = -> number { Cdr[number] }

$zero = Cons[True][True]
$one = Succ[$zero]
$two = Succ[$one]
$three = Succ[$two]

LTrue = -> _ { True }
LFalse = -> _ { False }

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
-> addend1 { -> addend2 {
  If[
    -> _ { addend2 }
  ][
    -> _ {
      NumbersAdd[Pred[addend1]][Succ[addend2]]
    }
  ][
    IsZero[addend1]
  ]
}}

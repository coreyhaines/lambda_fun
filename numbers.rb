require_relative 'core.rb'
IsZero = Car
Succ = -> number { Cons[False][number] }
Pred = Cdr #-> number { Cdr[number] }

$zero = Cons[True][Noop]
$one = Succ[$zero]
$two = Succ[$one]
$three = Succ[$two]
$four = Succ[$three]

IfZero =
-> if_this_is_zero { -> do_this { -> otherwise_do_this {
  IsZero[if_this_is_zero][do_this][otherwise_do_this].(Noop)
}}}

NumbersEqual =
-> first { -> second {
  IfZero[first][
    ->_{IsZero[second]}
  ][
    ->_{IfZero[second][LFalse][->_{NumbersEqual[Pred[first]][Pred[second]]}]}
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

Noop = -> _ { }

Cons = -> head { -> tail { -> f { f[head][tail] } } }
Car = -> tuple { tuple[-> head { -> tail { head }}] }
Cdr = -> tuple { tuple[-> head { -> tail { tail }}] }

True = -> true_case { -> false_case { true_case }}
False = -> true_case { -> false_case { false_case }}
If = -> true_case { -> false_case { -> bool { bool[true_case][false_case].(Noop) }}}

VW = -> value_to_wrap {->_{ value_to_wrap }}
LTrue = VW[True]
LFalse = VW[False]

Print = -> to_print { -> _ { puts to_print } }
PrintTrue = Print["True"]
PrintFalse = Print["False"]

FAIL = ->_{raise "Failed"}
Assert = -> bool { If[Print["T"]][FAIL][bool] }
Refute = -> bool { If[FAIL][Print["T"]][bool] }

And = ->bool1{->bool2{bool1[bool2][False]}}

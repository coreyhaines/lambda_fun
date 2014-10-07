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

And = ->bool1{->bool2{bool1[bool2][False]}}
Or = ->bool1{->bool2{bool1[True][bool2]}}
Not = ->bool{bool[False][True]}
XNor = ->bool1{->bool2{bool1[bool2][Not[bool2]]}}

Print = -> to_print { -> _ { System_Print[to_print] } }
PrintTrue = Print["True"]
PrintFalse = Print["False"]
PrintBoolean=->bool{bool[PrintTrue][PrintFalse].(Noop)}

Title=->to_print{Print["-----#{to_print}-----"].(Noop)}

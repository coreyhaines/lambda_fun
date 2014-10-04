True = -> true_case { -> false_case { true_case }}
False = -> true_case { -> false_case { false_case }}
If = -> true_case { -> false_case { -> bool { bool[true_case][false_case].(Noop) }}}
Print = -> to_print { -> _ { puts to_print } }
PrintTrue = Print["True"]
PrintFalse = Print["False"]

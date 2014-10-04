Cons = -> head { -> tail { -> f { f[head][tail] } } }
Car = -> tuple { tuple[-> head { -> tail { head }}] }
Cdr = -> tuple { tuple[-> head { -> tail { tail }}] }


require_relative 'core'
require_relative 'numbers'
System_Print=->to_print{puts to_print}
Raise=->to_raise{raise to_raise}
ConvertToRubyNumber=
->number{
  increment_ruby_number = ->result{->_{
    IfZero[result][
      ->_{Cons[False][1]}
    ][
      ->_{Cons[False][Cdr[result]+1]}
    ]
  }}
  Cdr[NumbersReduce[increment_ruby_number][number]]
}
PrintNumber=->number{puts ConvertToRubyNumber[number]}
def assert(expected, actual, msg = "")
  if(expected==actual)
    PrintTrue.(Noop)
  else
    Raise["Fail! expected #{expected}, got #{actual}. #{msg}"]
  end
end

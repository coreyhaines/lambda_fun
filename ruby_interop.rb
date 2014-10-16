require_relative 'core'
require_relative 'numbers'
require_relative 'testing'
System_Print=->to_print{Kernel.print to_print}
System_PrintLine=->to_print{System_Print[to_print+"\n"]}
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
    PASS[Noop]
  else
    Raise["Fail! expected #{expected}, got #{actual}. #{msg}"]
  end
end
RubyDisplayListOfNumbers=->list{
p Reduce[
  ->result{->element{
    result << element
  }}
][
  []
][
Map[ConvertToRubyNumber][list]
]
}

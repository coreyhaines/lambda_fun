require_relative 'ruby_interop.rb'
require_relative 'core.rb'
require_relative 'numbers.rb'
require_relative 'list.rb'
require_relative 'strings.rb'

FAIL = ->_{Raise["\e[31mFailed\e[0m"]}
PASS = Print["\e[32mT\e[0m"]
Assert=->bool{If[PASS][FAIL][bool]}
Refute=->bool{If[FAIL][PASS][bool]}


MakeAssert1=->operator{
->first{
  Assert[operator[first]]
}}
MakeAssert2=->operator{
->first{->second{
  Assert[operator[first][second]]
}}}

MakeRefute1=->operator{
->first{
  Refute[operator[first]]
}}
MakeRefute2=->operator{
->first{->second{
  Refute[operator[first][second]]
}}}

AssertZero=MakeAssert1[IsZero]
AssertNumbersEqual=
->expected{->actual{
  If[
    PASS
  ][
    ->_{ Raise["\e[31mFailed: Expected #{ConvertToRubyNumber[expected]}, got #{ConvertToRubyNumber[actual]}.\e[39m"] }
  ][
    NumbersEqual[expected][actual]
  ]
}}
RefuteNumbersEqual=
->expected{->actual{
  If[
    ->_{ Raise["\e[31mFailed: Expected #{ConvertToRubyNumber[actual]} to *NOT EQUAL* #{ConvertToRubyNumber[expected]}.\e[39m"] }
  ][
    PASS
  ][
    NumbersEqual[expected][actual]
  ]
}}

AssertEmpty=MakeAssert1[IsEmpty]
RefuteEmpty=MakeRefute1[IsEmpty]
AssertListsEqual=->element_equality_operator{MakeAssert2[ListsEqual[element_equality_operator]]}
AssertStringsEqual=MakeAssert2[StringsEqual]

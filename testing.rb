require_relative 'ruby_interop.rb'
require_relative 'core.rb'
require_relative 'numbers.rb'
require_relative 'list.rb'

FAIL = ->_{Raise["\e[31mFailed\e[0m"]}
PASS = Print["\e[32mPass\e[0m"]
Assert=->bool{If[Print["\e[32mT\e[0m"]][FAIL][bool]}
Refute=->bool{If[FAIL][Print["\e[32mT\e[0m"]][bool]}


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
AssertNumbersEqual=MakeAssert2[NumbersEqual]
RefuteNumbersEqual=MakeRefute2[NumbersEqual]

AssertEmpty=MakeAssert1[IsEmpty]
RefuteEmpty=MakeRefute1[IsEmpty]

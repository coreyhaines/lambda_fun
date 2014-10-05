require_relative 'core.rb'

def title(msg)
  puts "------#{msg}-----"
end

FAIL=->_{raise "Failed"}
Assert=->bool{If[Print["T"]][FAIL][bool]}
Refute=->bool{If[FAIL][Print["T"]][bool]}

AssertEqual=->equality_operator{
->first{->second{
  Assert[equality_operator[first][second]]
}}}

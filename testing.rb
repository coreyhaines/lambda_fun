require_relative 'core.rb'

FAIL=->_{raise "Failed"}
Assert=->bool{If[Print["T"]][FAIL][bool]}
Refute=->bool{If[FAIL][Print["T"]][bool]}

def title(msg)
  puts "------#{msg}-----"
end



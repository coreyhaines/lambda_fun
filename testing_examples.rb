require_relative 'testing.rb'
require_relative 'numbers.rb'
Title["Assert/Refute (4)"]
Assert[True]
begin
  Assert[False]
  Print["Asserting False failed"].(Noop)
rescue
  Print["T"].(Noop)
end

Refute[False]
begin
  Refute[True]
  Print["Refuting True failed"].(Noop)
rescue
  Print["T"].(Noop)
end

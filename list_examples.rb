load './core.rb'
load './list.rb'
def title(msg)
  puts "------#{msg}-----"
end

title "Lists"

title "Empty List"
Assert[IsEmpty[EmptyList]]

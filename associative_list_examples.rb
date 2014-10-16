require_relative 'testing.rb'
require_relative 'associative_list.rb'
require_relative 'numbers.rb'
require_relative 'ruby_interop.rb'

cfrs = ConvertFromRubyString
Title["Associative Lists"]

Title["With numbers are keys (5)"]
my_list = NewAssociativeList[NumbersEqual]

AssertZero[AssociativeListLength[my_list]]

my_list=AssociativeListAdd[my_list][$three][cfrs["Zak"]]
my_list=AssociativeListAdd[my_list][$one][cfrs["Josh"]]
my_list=AssociativeListAdd[my_list][$two][cfrs["Corey"]]

AssertNumbersEqual[$three][AssociativeListLength[my_list]]

Assert[ListsEqual[NumbersEqual][cfrs["Josh"]][AssociativeListGet[my_list][$one]]]
Assert[ListsEqual[NumbersEqual][cfrs["Corey"]][AssociativeListGet[my_list][$two]]]
Assert[ListsEqual[NumbersEqual][cfrs["Zak"]][AssociativeListGet[my_list][$three]]]
# TODO: not a key

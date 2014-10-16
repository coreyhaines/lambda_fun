require_relative 'testing.rb'
require_relative 'associative_list.rb'
require_relative 'numbers.rb'
require_relative 'strings.rb'
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

Assert[StringsEqual[cfrs["Josh"]][AssociativeListGet[my_list][$one]]]
Assert[StringsEqual[cfrs["Corey"]][AssociativeListGet[my_list][$two]]]
Assert[StringsEqual[cfrs["Zak"]][AssociativeListGet[my_list][$three]]]

Title["With string keys (3)"]

key1=ConvertFromRubyString["key1"]
key2=ConvertFromRubyString["key2"]
key3=ConvertFromRubyString["key3"]

my_list=NewAssociativeList[StringsEqual]
my_list=AssociativeListAdd[my_list][key2][cfrs["Zak"]]
my_list=AssociativeListAdd[my_list][key1][cfrs["Josh"]]
my_list=AssociativeListAdd[my_list][key3][cfrs["Corey"]]

AssertStringsEqual[cfrs["Josh"]][AssociativeListGet[my_list][key1]]
AssertStringsEqual[cfrs["Zak"]][AssociativeListGet[my_list][key2]]
AssertStringsEqual[cfrs["Corey"]][AssociativeListGet[my_list][key3]]

# TODO: When the key is not in the associative list

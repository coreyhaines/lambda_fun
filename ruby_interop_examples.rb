require_relative 'ruby_interop'
require_relative 'numbers'

Title["Converting Numbers To RubyNumbers (4)"]
assert 1, ConvertToRubyNumber[$one]
assert 2, ConvertToRubyNumber[$two]
assert 3, ConvertToRubyNumber[$three]
assert 6, ConvertToRubyNumber[NumbersAdd[$three][$three]]

Title["Converting RubyNumbers to Numbers (4)"]
AssertNumbersEqual[ConvertFromRubyNumber[1]][$one]
AssertNumbersEqual[ConvertFromRubyNumber[2]][$two]
AssertNumbersEqual[ConvertFromRubyNumber[3]][$three]
AssertNumbersEqual[ConvertFromRubyNumber[6]][NumbersAdd[$three][$three]]

Title["String/List conversions (4)"]
AssertNumbersEqual[ConvertFromRubyNumber[97]][ConvertFromRubyChar['a']]
AssertListsEqual[NumbersEqual][NewList[ConvertFromRubyNumber[97]]][ConvertFromRubyString["a"]]
AssertListsEqual[NumbersEqual][
  Map[ConvertFromRubyChar][Unshift[Unshift[NewList["k"]]["a"]]["z"]]
][ConvertFromRubyString["zak"]]
AssertListsEqual[NumbersEqual][
  ConvertFromRubyString["Zak"]
][
  ListAdd[ConvertFromRubyString["Za"]][ConvertFromRubyString["k"]]
]

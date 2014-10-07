require_relative 'ruby_interop'
require_relative 'numbers'

Title["Converting Numbers To RubyNumbers (4)"]
assert 1, ConvertToRubyNumber[$one]
assert 2, ConvertToRubyNumber[$two]
assert 3, ConvertToRubyNumber[$three]
assert 6, ConvertToRubyNumber[NumbersAdd[$three][$three]]

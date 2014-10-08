require_relative 'core'
require_relative 'list'
require_relative 'numbers'
require_relative 'ruby_interop'

list = Unshift[NewList[$one]][$two]

mapped = Map[ConvertToRubyNumber][list]

p Reduce[
  ->result{->element{
    result << element
  }}
][
  []
][
  mapped
]

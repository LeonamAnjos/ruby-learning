# p054constwarn.rb
A_CONST = 10
A_CONST = 20
B_CONST = 'B'
puts B_CONST
B_CONST.freeze
B_CONST << 'A'
puts B_CONST

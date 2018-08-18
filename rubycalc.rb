#!/usr/bin/env ruby

def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [a]dd, [s]ubtract, [m]ultiply or [d]ivide?"
response = gets.chomp

case response.downcase
when 'a'
  puts "Which numbers would you like to add?"
  operator = :+

when 's'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'd'
  puts "Which numbers would you like to divide?"
  operator = :/

when 'm'
    puts "Which numbers would you like to multiply?"
    operator = :*
  
end

answer = get_int_values.inject(operator)
puts "Your calculation answer is... #{ answer }"
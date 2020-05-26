require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts @store1.employees.create(first_name: nil, last_name: "Grewal", hourly_rate: 50).valid?

store_name = gets.chomp

store = Store.create(name: store_name)
store.errors.full_messages.each {|err| puts err }




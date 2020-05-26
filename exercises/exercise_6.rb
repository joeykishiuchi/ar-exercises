require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.first
@store2 = Store.find_by(id: 2)
@store4 = Store.find_by(id: 4)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 20)
@store1.employees.create(first_name: "Jake", last_name: "Grewal", hourly_rate: 50)
@store1.employees.create(first_name: "Don", last_name: "Hardman", hourly_rate: 90)

@store2.employees.create(first_name: "Gale", last_name: "Jimathin", hourly_rate: 100)
@store2.employees.create(first_name: "Stacey", last_name: "Keating", hourly_rate: 30)
@store2.employees.create(first_name: "Ben", last_name: "Stiller", hourly_rate: 70)
@store2.employees.create(first_name: "Kyle", last_name: "Johnson", hourly_rate: 60)

employees = Employee.all
puts employees.count
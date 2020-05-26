require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

stores = Store.all
total_revenue = stores.sum(:annual_revenue)
puts total_revenue

average_revenue = total_revenue / stores.count
puts average_revenue

stores_over_1M = Store.where('annual_revenue >= 1000000').count

puts stores_over_1M
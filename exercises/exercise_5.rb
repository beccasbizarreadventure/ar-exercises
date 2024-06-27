require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Exercise 5: Calculations
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)
big_earners = Store.where('annual_revenue > ?', 1000000).count # proper syntax for finds the number of stores where annual_revenue is greater than 1000000

puts "Total company revenue: $#{total_revenue}"
puts "There are #{big_earners} high earning stores"
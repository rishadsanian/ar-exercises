# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Exercise 5: Calculations

# Your code goes here ...

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue of all stores: #{total_revenue}"

# On the next line, also output the average annual revenue for all stores.
average_revenue = Store.average(:annual_revenue)
puts "Average Revenue of all stores: #{average_revenue}"

# Output the number of stores that are generating $1M or more in annual sales.
# Hint: Chain together where and size (or count) Active Record methods.

count_stores_with_over_1m_revenue = Store.where('annual_revenue>= ?', 1_000_000).count

puts "Stores with over 1M in revenue: #{count_stores_with_over_1m_revenue}"

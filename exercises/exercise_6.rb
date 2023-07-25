# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Exercise 6: One-to-many association

# assign rest of the stores
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)
@store6 = Store.find_by(id: 6)

# Add data into employees for @store1 (Burnaby)
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)

# Add some more data into employees.

@store1.employees.create(first_name: 'Jane', last_name: 'Smith', hourly_rate: 55)

@store2.employees.create(first_name: 'Mike', last_name: 'Williams', hourly_rate: 45)
@store2.employees.create(first_name: 'Emily', last_name: 'Johnson', hourly_rate: 52)

@store4.employees.create(first_name: 'Chris', last_name: 'Lee', hourly_rate: 58)
@store4.employees.create(first_name: 'Ella', last_name: 'Taylor', hourly_rate: 49)

@store5.employees.create(first_name: 'David', last_name: 'Anderson', hourly_rate: 51)
@store5.employees.create(first_name: 'Fiona', last_name: 'White', hourly_rate: 46)

@store6.employees.create(first_name: 'George', last_name: 'Martin', hourly_rate: 47)
@store6.employees.create(first_name: 'Hannah', last_name: 'Clark', hourly_rate: 54)

# Your code goes here ...

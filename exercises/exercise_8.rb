# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

# In exercise_1.rb create another employee for an existing store and once
# created (using save or create) but without specifying a password when
# creating the record so that it can be auto-created by the model.

@store1.employees.create(first_name: 'John', last_name: 'Doe', hourly_rate: 50)
@store1.save

# Use puts in the exercise file to print out the password after the record is created to make sure that is working.
puts @store1.employees.last.password

# frozen_string_literal: true

# Active records table for employees. Contains name and hourly wage
class Employee < ActiveRecord::Base
  # Add the following code directly inside the Employee model (class): belongs_to :store
  belongs_to :store
end

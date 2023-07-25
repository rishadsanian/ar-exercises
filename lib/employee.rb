# frozen_string_literal: true

# Active records table for employees. Contains name and hourly wage
class Employee < ActiveRecord::Base
  # Add the following code directly inside the Employee model (class): belongs_to :store
  belongs_to :store

  # Employees must always have a first name present
  validates :first_name, presence: true

  # Employees must always have a last name present
  validates :last_name, presence: true

  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  validates :store, presence: true

  # Before an employee is created, AR should automatically create a random (8 character string) password.
  # before_create :generate_random_password
  after_create_commit :generate_random_password #add commit after create to save

  private

  def generate_random_password
    self.password = SecureRandom.hex(4) # Generates a random 8-character string
  end
end


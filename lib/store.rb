# frozen_string_literal: true

# Active record class connects to store table and contains all stores, revenue, mens apparel and womens apparel
class Store < ActiveRecord::Base
  # Add the following code directly inside the Store model (class): has_many :employees
  has_many :employees

  # Stores must always have a name that is a minimum of 3 characters
  validates :name, length: { minimum: 3 }

  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # BONUS: Stores must carry at least one of the men's or women's apparel
  # (hint: use a custom validation method - don't use a Validator class)
  validate :must_carry_apparel
end

private

# method to validate conditional apparel carry
def must_carry_apparel
  return if mens_apparel? || womens_apparel?

  errors.add(:base, 'Store must carry at least one of men\'s or women\'s apparel')
end

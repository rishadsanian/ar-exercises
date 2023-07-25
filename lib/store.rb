# frozen_string_literal: true

# Active record class connects to store table and contains all stores, revenue, mens apparel and womens apparel
class Store < ActiveRecord::Base
  # Add the following code directly inside the Store model (class): has_many :employees
  has_many :employees
end

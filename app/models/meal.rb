class Meal < ApplicationRecord
  # associations
  has_many :order_items
  # validations
  validates :name, :description, presence: true
end

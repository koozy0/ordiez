class Meal < ApplicationRecord
  has_many :order_items
  validates :name, :description, presence: true
end

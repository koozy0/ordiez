class OrderItem < ApplicationRecord
  belongs_to :meal, dependent: :destroy
  belongs_to :delivery_order, dependent: :destroy
  validates :delivery_order_id, :meal_id, :quantity, :unit_price, presence: true
end

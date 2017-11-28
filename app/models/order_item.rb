class OrderItem < ApplicationRecord
  # associations
  belongs_to :meal, dependent: :destroy
  belongs_to :delivery_order, dependent: :destroy
  has_one :feedback, as: :ratable, dependent: :destroy
  # validations
  validates :delivery_order_id, :meal_id, :quantity, :unit_price, presence: true

  # formatting information to return
  def format_order
    # need to get name, quantity, total_price
    name = Meal.find(self.meal_id).name
    quantity = self.quantity
    total_price = quantity * self.unit_price
    # return object
    {
      name: name,
      quantity: quantity,
      total_price: total_price
    }
  end
end

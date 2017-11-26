FactoryBot.define do
  factory :order_item do
    meal
    delivery_order
    quantity 1
    unit_price 1
  end
end

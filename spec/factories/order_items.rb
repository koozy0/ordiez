FactoryBot.define do
  factory :order_item do
    meal nil
    delivery_order nil
    quantity 1
    unit_price 1
  end
end

require 'faker'

FactoryBot.define do
  factory :delivery_order do
    order_id "GO00001"
    serving_datetime {Faker::Time.between(DateTime.now - 1, DateTime.now).beginning_of_hour()}
  end
end

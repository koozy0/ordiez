# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# create 5 delivery orders
5.times do
  DeliveryOrder.create(
    serving_datetime: Faker::Time.between(DateTime.now - 1, DateTime.now).beginning_of_hour()
  )
end
# create 10 meals
10.times do
  Meal.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.paragraph
  )
end
# for each delivery order, create between 1 and 5 order items
DeliveryOrder.all.each do |delivery_order|
  Random.rand(1..5).times do
    OrderItem.create(
      meal_id: Random.rand(1..10),
      delivery_order_id: delivery_order.id,
      quantity: Random.rand(1..5),
      unit_price: Random.rand(2000..3000).round(-1)
    )
  end
end

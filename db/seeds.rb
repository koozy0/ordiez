# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  DeliveryOrder.create(
    serving_datetime: DateTime.now
  )
end

10.times do
  Meal.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.paragraph
  )
end

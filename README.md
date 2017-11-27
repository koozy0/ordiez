# Ordiez

### Instructions
+ run `bundle install` to install required gems
+ run `rails db:create` to create database
+ run `rails db:migrate` to migrate models
+ run `rails db:seed` to seed database
+ run `rails spec` to run the tests
+ run `rails s` to start rails server

### Routes
+ `/orders`
+ `/orders/:id` (`:id` is between GO00001 and GO00005)

### Other Details
+ ids are created based on the `delivery_order` primary key i.e. if delivery_order.id === 1, it's `order_id` will be "GO00001"
+ `Meal` foreign key references for the `DeliveryOrder` model are currently hard-coded (between 1..10), will need to change `seed.rb` if seeding database more than once
+ similarly, adjust `:id` for routes accordingly if seeding database more than once

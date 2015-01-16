# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Admin",
             email: "admin@example.com",
             admin: true)

12.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+2}@example.com"
  User.create!(name:  name,
               email: email)
end

Event.create!(name: "Vacation",
							user_id:2)

5.times do |n|
	Membership.create!(user_id: n+1, event_id: 1)
end

10.times do |x|
	amount = Faker::Commerce.price.round(2)
	description = Faker::Commerce.product_name
	user = Random.rand(1..5)
	date = Faker::Date.between(3.days.ago, Date.today)
	Payment.create!(user_id: user,
									event_id:1,
									transaction_date: date,
									amount: amount,
									description: description)
end

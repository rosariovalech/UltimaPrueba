# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'nuevo@example.com', password:'password', password_confirmation: 'password')

Company.destroy_all
User.destroy_all
Claim.destroy_all

20.times do
  Company.create!([{
  	title: Faker::Company.name,
  	content: Faker::Company.catch_phrase,
  	}])
end

30.times do
  User.create!([{
  	email: Faker::Internet.email,
  	password: Faker::Internet.password,
  	}])
end

250.times do
  Claim.create!([{
  	title: Faker.Lorem.Sentence(),
  	content: Faker.Lorem.Paragraph(),
  	published: Faker::Date.forward(23),
  	}])
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
User.destroy_all
Complain.destroy_all

20.times do
  Company.create(
    name: Faker::Company.name
  )
end

30.times do
  User.create(
    name: Faker::FunnyName.name,
    email: Faker::Internet.email
  )
end

250.times do
  Complain.create(
    content: Faker::Lorem.sentence
  )
end
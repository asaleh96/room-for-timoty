# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
# User.destroy_all

puts 'Creating 4 fake users...'
4.times do
  user = User.new(
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    password: 'password',
    email: Faker::Internet.email,
    interests: 'Cooking'
  )
  user.save!
end

puts 'Creating 10 fake flats...'
10.times do
  flat = Flat.new(
    title:    Faker::Address.community,
    description: "Nice apartment with #{Faker::Hipster.word} coffee beans.
                  Located in a #{Faker::Adjective.positive} area of the city.",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    available_from: Faker::Date.between(from: '2022-11-3', to: '2022-12-25'),
    rent: ((300..1500).to_a).sample,
    user: User.find(rand(1..4)))
  flat.save!
  puts "#{flat.title} has been created"
end

puts 'Finished!'

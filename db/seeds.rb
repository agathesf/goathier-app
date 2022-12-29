# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Destroying all instances"

Task.destroy_all
Project.destroy_all
User.destroy_all

puts "Done destroying"

puts "------------------------"

puts "Creating users ..."

2.times do
  email = Faker::Internet.email
  password = "123456"

  user = User.create!(email: email, password: password)
end

puts "Creating projects ..."

projects = []

2.times do
  name = Faker::Company.name
  price = rand(1000..5000)
  time_target = rand(10..180)
  user = User.first

  project = Project.create!(name: name, price: price, time_target: time_target, user: user)
  project.pending!
  
  projects << project
end

2.times do
  name = Faker::Company.name
  price = rand(1000..5000)
  time_target = rand(10..180)
  user = User.last

  project = Project.create!(name: name, price: price, time_target: time_target, user: user)
  project.pending!

  projects << project
end

puts "#{projects.length} projects created !"

puts "------------------------"

puts "Done seeding !"

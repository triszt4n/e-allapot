# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

user_count = 100
user_count.times do |i|
    User.create name: Faker::Name.name, email: Faker::Internet.email, age: (18..26).to_a.sample
    puts "#{i} / #{user_count}"
end

floor_count = 18
room_per_floor = 16
floor_count.times do |f|
    room_per_floor.times do |r|
        Room.create floor: f, number: r
        puts "#{room_per_floor * f + r} / #{floor_count * room_per_floor}"
    end
end


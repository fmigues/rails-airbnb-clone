# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
User.destroy_all


user = User.new( email: "test@test.com", password: "password")

p user.valid?
p user.errors.messages
user.save


profile = Profile.new(user: user, first_name: "Test User", last_name: "Lastname Test", gender: "Male")

p profile.valid?
profile.save

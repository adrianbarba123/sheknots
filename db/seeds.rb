# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
require 'pry'

puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all
Review.destroy_all

puts "Creating restaurants..."
rs1 = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
rs2 = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
rs3 = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
c1 = Customer.create(first_name: "Emma", last_name: "Bunton")
c2 = Customer.create(first_name: "Geri", last_name: "Halliwell")
c3 = Customer.create(first_name: "Melanie", last_name: "Brown")
c4 = Customer.create(first_name: "Melanie", last_name: "Chisholm")
c5 = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
# **
# * TODO: create reviews! Remember, a review belongs to a restaurant *
# * and a review belongs to a customer.                              *
# **
# Create reviews Here
r1=Review.create(star_rating: 1, customer_id: c1.id, restaurant_id: rs1.id)
r2=Review.create(star_rating: 2, customer_id: c2.id, restaurant_id: rs2.id)
r3=Review.create(star_rating: 4, customer_id: c3.id, restaurant_id: rs3.id)

binding.pry
puts "Seeding done!"